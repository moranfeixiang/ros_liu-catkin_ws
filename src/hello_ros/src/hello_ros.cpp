// ros标志头文件，ros程序的标配
#include <ros/ros.h>

int main(int argc, char** argv) {

    // 初始化ros节点，最后一个参考是节点名
    ros::init(argc, argv, "hello_ros");

    // 创建ros节点句柄，其会把节点注册到master中
    ros::NodeHandle nh;

    // info等级打印hello
    ROS_INFO("hello ros!");

    return 0;
}
