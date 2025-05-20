#!/usr/bin/env python3

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist

def vel_callback(msg):
    print(msg.linear.x, msg.angular.z)

if __name__=='__main__':
    rospy.init_node('trd_driver_node')
    odom_pub = rospy.Publisher('/odom', Odometry, queue_size=10)
    vel_sub = rospy.Subscriber('/cmd_vel', Twist, vel_callback)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        current_odom = Odometry()
        odom_pub.publish(current_odom)
        rate.sleep()

