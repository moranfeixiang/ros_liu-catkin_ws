#! /usr/bin/env python3
import roslib
import rospy
from functools import partial
import tf
from turtlesim.msg import Pose

def pose_cb(msg, tf_br, turtlename):
  # 设置指定turtle坐标系相对于work坐标系的平移数据
  translate_date = (msg.x, msg.y, 0)
  # quaternion_from_euler直译过来就是来自欧拉角的四元数
  # 设置指定turtle坐标系相对于world坐标系的旋转数据
  rotation_data = tf.transformations.quaternion_from_euler(0, 0, msg.theta)
  # 发送相对于world坐标系，指定turtle坐标系的tf（注意：这里的world写在后面，cpp里是写在前面）
  tf_br.sendTransform(translate_date, rotation_data, rospy.Time.now(), turtlename, "world")

def main():
  rospy.init_node("turtle_tf_broadcaster")
  
  # python版的tf广播器，利用全局参数传参
  # rospy.get_param()是python的参数获取接口，cpp里是ros::param::get()
  turtlename = rospy.get_param("~turtle")

  pose_topic = "/%s/pose" %turtlename
  tf_br = tf.TransformBroadcaster()
  bind_pose_cb = partial(pose_cb, tf_br=tf_br, turtlename=turtlename)
  rospy.Subscriber(pose_topic, Pose, bind_pose_cb)
  rospy.spin()

if __name__ == "__main__":
  main()

