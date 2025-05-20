#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <turtlesim/Pose.h>
#include "cxxopts.hpp"
// poseCb()用于处理turtlesim::Pose消息，根据当前的pose消息内容，制作并广播指定turtle坐标系相对于world坐标系的tf数据
void poseCb(const turtlesim::PoseConstPtr& msg, tf::TransformBroadcaster& br, const std::string& turtle_name) {
    // 创建tf数据对象
    tf::Transform tf_data;
    // turtlesim::Pose的x,y值，z为0，就是turtle坐标系相对于world坐标系的平移向量
    tf_data.setOrigin(tf::Vector3(msg->x, msg->y, 0.0));
    // 创建四元数类，描述旋转
    tf::Quaternion q;
    // Quaternion提供设置欧拉角的接口，内部转换为四元数。
    // turtlesim::Pose的theta值，就是turtle坐标系相对于world坐标系的yaw（绕z轴）值，因为是平面，其余两个为0
    q.setRPY(0, 0, msg->theta);
    // 将四元数传给tf数据
    tf_data.setRotation(q);
	// 发送一个带时间戳的tf数据，其表示在world坐标系下，指定turtle坐标系的平移和旋转关系
	// 由于turtlesim::Pose的频率是50hz，因此这个tf广播器的频率也是50hz
    br.sendTransform(tf::StampedTransform(tf_data, ros::Time::now(), "world", turtle_name));
}

int main(int argc, char ** argv) {
    ros::init(argc, argv, "ycao_tf_broadcaster");

    // https://github.com/jarro2783/cxxopts
    cxxopts::Options options(argv[0], "specify turtle name");
    options.add_options()
        ("n,name", "Name of the turtle", cxxopts::value<std::string>())
        ("h,help", "show help");

    auto result = options.parse(argc, argv);
    if (result.count("help")) {
        ROS_INFO("%s", options.help().c_str());
        return 0;
    }
	// -n指定坐标系名，即turtle1或turtle2，该程序将广播指定坐标系相对于word坐标系的tf数据（平移和旋转）
    if (!result.count("name")) {
        ROS_ERROR("please specify turtle name using -n");
        return -1;
    }     

    std::string turtle_name = result["name"].as<std::string>();
    std::string pose_topic = turtle_name+"/pose";
    // 创建tf广播器，并传入turtlesim::Pose的回调函数，用来发送tf
    tf::TransformBroadcaster br;
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe<turtlesim::Pose>(pose_topic, 10, std::bind(poseCb, std::placeholders::_1, std::ref(br), turtle_name));

	ros::spin();
    return 0;
}

