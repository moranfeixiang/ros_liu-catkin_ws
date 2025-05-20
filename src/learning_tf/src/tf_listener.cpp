#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>

int main(int argc, char ** argv) {
    ros::init(argc, argv, "ycao_tf_listener");
    ros::NodeHandle nh;
    // 调用/spawn服务，生成turtle2
    ros::ServiceClient spawnClient = nh.serviceClient<turtlesim::Spawn>("/spawn");
    ros::service::waitForService("/spawn");
    turtlesim::Spawn::Request req;
    turtlesim::Spawn::Response resp;
    bool ok = spawnClient.call(req, resp);
    if (ok) {
        ROS_INFO("spawned a turtle named %s", resp.name.c_str());
    } else {
        ROS_ERROR("Failed to spawn");
    }
	// 创建turtle2的行动控制topic
    ros::Publisher cmd_pub = nh.advertise<geometry_msgs::Twist>("/turtle2/cmd_vel", 10);
	// 创建tf 监听器，以10hz的频率，监听相对于turtle2坐标系，turtle1坐标系的tf值（平移和旋转）
    tf::TransformListener listener;
    ros::Rate loop_rate(10);
    while (nh.ok()) {
        tf::StampedTransform tf_data;
        try {
			listener.waitForTransform("/turtle2", "/turtle1", ros::Time(0), ros::Duration(3.0));
			// 监听相对于turtle2坐标系，turtle1坐标系的tf值（平移和旋转）
			listener.lookupTransform("/turtle2", "/turtle1", ros::Time(0), tf_data);            
        } catch (tf::TransformException &ex) {
            ROS_ERROR("%s", ex.what());
            ros::Duration(1.0).sleep();
            continue;
        }
        
		// 根据turtle1相对于turtle2坐标系的tf值，设置turtle2的运动指令，让turtle2跟着turtle1跑
        geometry_msgs::Twist vel;
        
        // getOrigin()返回相对于turtle2坐标系，turtle1坐标原点的位置，也就是turtle1的位置
        // getRotation()返回相对于turtle2坐标系，turtle1坐标系的旋转角度，用四元数表示，也就是turtle1的朝向，这里用不到这个信息
        
        // sqrt()是求turtle1与turtle两者的距离，也就是x平方加y平方，然后开根号。
        // 0.5是经验值，距离越大，turtle2的速度越大，随着距离减小，速度越来越慢，直到距离为0
        // 0.5可以控制turtle2的行进速度过快，避免出现“横冲直撞”，导致跟不住turtle1
        vel.linear.x = 0.5 * sqrt(pow(tf_data.getOrigin().x(), 2) + pow(tf_data.getOrigin().y(), 2));
        
        // atan2(y,x)一种反正切函数，返回turtle1与turtle2坐标原点连线与turtle2坐标系x轴正向之间的夹角，如果turtle1位于turtle2坐标系x轴上方，则为正值，反之为负值
        // 4.0是个经验值，当两者夹角比较大时，turtle2会更快的转向turtle1，随着夹角变小，转的越来越慢，直到夹角为0
        vel.angular.z = 4.0 * atan2(tf_data.getOrigin().y(), tf_data.getOrigin().x());

        // 下面的改动，可以让turtle1控制turtle2的转向，即turtle2跟随turtle1转，但turtle2追不上turtle1，也很好玩
        /*
        double roll, pitch, yaw;
        tf::Quaternion qua = tf_data.getRotation();
        tf::Matrix3x3(qua).getRPY(roll, pitch, yaw);
        vel.angular.z = 4.0 * yaw;
		*/
		
        cmd_pub.publish(vel);
        loop_rate.sleep();
        ros::spinOnce();
    }
    return 0;
}

