#!/usr/bin/env python3
import rospy
import math
import tf
from geometry_msgs.msg import Twist, Point, Quaternion
from nav_msgs.msg import Odometry
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped

class TrajectoryController:
    def __init__(self):
        rospy.init_node('trajectory_controller')
        
        # 控制器参数
        self.k_linear = 0.5    # 线速度比例系数
        self.k_angular = 1.2   # 角速度比例系数
        self.max_linear = 0.3  # 最大线速度(m/s)
        self.max_angular = 1.0 # 最大角速度(rad/s)
        self.goal_tolerance = 0.05  # 位置容差(m)
        self.angle_tolerance = 0.05 # 角度容差(rad)
        
        self.pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.odom_sub = rospy.Subscriber('/odom', Odometry, self.odom_cb)
        
        self.current_pose = None
        self.tf_listener = tf.TransformListener()
        
    def odom_cb(self, msg):
        """获取当前位姿"""
        self.current_pose = msg.pose.pose
        
    def get_current_position(self):
        """返回当前位置(x,y)和偏航角"""
        if self.current_pose is None:
            return None, None, None
            
        x = self.current_pose.position.x
        y = self.current_pose.position.y
        quaternion = (
            self.current_pose.orientation.x,
            self.current_pose.orientation.y,
            self.current_pose.orientation.z,
            self.current_pose.orientation.w)
        euler = tf.transformations.euler_from_quaternion(quaternion)
        yaw = euler[2]
        
        return x, y, yaw
        
    def generate_trajectory(self, start, goal):
        """
        轨迹生成主函数
        start: (x, y, theta)
        goal: (x, y, theta)
        """
        # 阶段1：旋转对准目标方向
        self.rotate_to_goal(goal)
        
        # 阶段2：直线运动到目标点
        self.move_to_goal(goal)
        
        # 阶段3：最终角度调整
        self.adjust_final_angle(goal)
        
    def rotate_to_goal(self, goal):
        """初始旋转对准目标方向"""
        rate = rospy.Rate(10)
        while not rospy.is_shutdown():
            x, y, yaw = self.get_current_position()
            if x is None:
                continue
                
            # 计算目标方向
            dx = goal[0] - x
            dy = goal[1] - y
            target_yaw = math.atan2(dy, dx)
            
            # 计算角度误差
            angle_error = self.normalize_angle(target_yaw - yaw)
            
            if abs(angle_error) < self.angle_tolerance:
                break
                
            # 发布角速度
            cmd = Twist()
            cmd.angular.z = self.constrain(self.k_angular * angle_error, 
                                         -self.max_angular, self.max_angular)
            self.pub.publish(cmd)
            rate.sleep()
            
    def move_to_goal(self, goal):
        """直线运动到目标点"""
        rate = rospy.Rate(10)
        while not rospy.is_shutdown():
            x, y, yaw = self.get_current_position()
            if x is None:
                continue
                
            # 计算位置误差
            dx = goal[0] - x
            dy = goal[1] - y
            distance = math.hypot(dx, dy)
            
            if distance < self.goal_tolerance:
                break
                
            # 计算方向误差
            target_yaw = math.atan2(dy, dx)
            angle_error = self.normalize_angle(target_yaw - yaw)
            
            # 控制指令
            cmd = Twist()
            cmd.linear.x = self.constrain(self.k_linear * distance,
                                         -self.max_linear, self.max_linear)
            cmd.angular.z = self.constrain(self.k_angular * angle_error,
                                          -self.max_angular, self.max_angular)
            self.pub.publish(cmd)
            rate.sleep()
            
    def adjust_final_angle(self, goal):
        """最终角度调整"""
        rate = rospy.Rate(10)
        while not rospy.is_shutdown():
            x, y, yaw = self.get_current_position()
            if x is None:
                continue
                
            angle_error = self.normalize_angle(goal[2] - yaw)
            
            if abs(angle_error) < self.angle_tolerance:
                break
                
            cmd = Twist()
            cmd.angular.z = self.constrain(self.k_angular * angle_error,
                                         -self.max_angular, self.max_angular)
            self.pub.publish(cmd)
            rate.sleep()
            
        # 停止机器人
        self.pub.publish(Twist())
        
    @staticmethod
    def normalize_angle(angle):
        """将角度规范到[-pi, pi]"""
        while angle > math.pi:
            angle -= 2.0 * math.pi
        while angle < -math.pi:
            angle += 2.0 * math.pi
        return angle
        
    @staticmethod
    def constrain(value, min_val, max_val):
        """限制数值范围"""
        return max(min(value, max_val), min_val)

if __name__ == '__main__':
    try:
        controller = TrajectoryController()
        rospy.sleep(1)  # 等待初始化完成
        
        # 设置目标位姿 (x, y, theta)
        start_pose = (0.0, 0.0, 0.0)
        goal_pose = (2.0, 1.5, math.pi/2)
        
        controller.generate_trajectory(start_pose, goal_pose)
        
    except rospy.ROSInterruptException:
        pass