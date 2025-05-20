#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv) {
  ros::init(argc, argv, "robot_tf_broadcaster");
  ros::NodeHandle nh;
  ros::Rate loop_rate(100);
  tf::TransformBroadcaster br;
  while (nh.ok()) {
    // 发布相对于base_link坐标系，base_laser坐标系的 tf 数据
    // 相对于base_link坐标系，base_laser坐标系在x 与 z轴分别平移了0.1 和0.2，没有旋转关系
    tf::Transform tf_data;
    tf_data.setOrigin(tf::Vector3(0.1, 0.0, 0.2));
    tf_data.setRotation(tf::Quaternion(0, 0, 0, 1));
    br.sendTransform(tf::StampedTransform(tf_data, ros::Time::now(), "base_link", "base_laser"));

    loop_rate.sleep();
    ros::spinOnce();
  }
  return 0;
}
