#include <ros/ros.h>
#include <stdlib.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/PointStamped.h>

void tfPointCb(const ros::TimerEvent& ev, const tf::TransformListener& listener) {
  // 用随机数模拟收到的激光雷达点云数据，并指定为base_laser坐标描述
  geometry_msgs::PointStamped laser_point;
  laser_point.header.frame_id = "base_laser";
  laser_point.header.stamp = ros::Time();
  laser_point.point.x = double(rand())/double(RAND_MAX);
  laser_point.point.y = double(rand())/double(RAND_MAX);
  laser_point.point.z = double(rand())/double(RAND_MAX);

  try {
    tf::StampedTransform tf_data;
    listener.lookupTransform("base_link", "base_laser", ros::Time(0), tf_data);
    ROS_INFO("base_laser to base_link translation transform: (%.2f, %.2f, %.2f)", 
              tf_data.getOrigin().x(), tf_data.getOrigin().y(), tf_data.getOrigin().z());

	// 使用tf::TransformListener::transformPoint接口，实时将base_laser坐标数据转换为base_link坐标数据
    geometry_msgs::PointStamped base_point;
    // target coordinate, origin point, target point
    listener.transformPoint("base_link", laser_point, base_point);
    ROS_INFO("base_laser: (%.2f, %.2f, %.2f) --> base_link: (%.2f, %.2f, %.2f) at time %.2f", 
            laser_point.point.x, laser_point.point.y, laser_point.point.z,
            base_point.point.x, base_point.point.y, base_point.point.z,
            base_point.header.stamp.toSec());

  } catch (tf::TransformException& ex) {
    ROS_ERROR("Received an exception trying to transform a point form base_laser to base_link: %s", ex.what());
  }
}

int main(int argc, char** argv) {
  ros::init(argc, argv, "robot_tf_listener");
  ros::NodeHandle nh;
  // 创建一个带时间缓存的 tf 监听器
  // The argument inside the parentheses ros::Duration(10) specifies that the cache size of the listener will be 10 seconds. 
  // This means that the listener will store transformations from the last 10 seconds.
  tf::TransformListener listener(ros::Duration(10));

  srand(time(0));
  // 使用ros::Timer，用来调度回调函数，监听 tf 数据。第一个参数是设置计时器触发间隔，这里是1秒
  // 注意ros::Timer 内部并没有创建线程，而是占用主线程轮询计时器。
  ros::Timer timer = nh.createTimer(ros::Duration(1.0), std::bind(tfPointCb, std::placeholders::_1, std::ref(listener)));

  ros::spin();
  return 0;
}
