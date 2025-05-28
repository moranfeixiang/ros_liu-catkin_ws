;; Auto-generated. Do not edit!


(when (boundp 'diffbot_msgs::AngularVelocitiesStamped)
  (if (not (find-package "DIFFBOT_MSGS"))
    (make-package "DIFFBOT_MSGS"))
  (shadow 'AngularVelocitiesStamped (find-package "DIFFBOT_MSGS")))
(unless (find-package "DIFFBOT_MSGS::ANGULARVELOCITIESSTAMPED")
  (make-package "DIFFBOT_MSGS::ANGULARVELOCITIESSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude AngularVelocitiesStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diffbot_msgs::AngularVelocitiesStamped
  :super ros::object
  :slots (_header _angular_velocities ))

(defmethod diffbot_msgs::AngularVelocitiesStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angular_velocities __angular_velocities) (instance diffbot_msgs::AngularVelocities :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angular_velocities __angular_velocities)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angular_velocities
   (&rest __angular_velocities)
   (if (keywordp (car __angular_velocities))
       (send* _angular_velocities __angular_velocities)
     (progn
       (if __angular_velocities (setq _angular_velocities (car __angular_velocities)))
       _angular_velocities)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; diffbot_msgs/AngularVelocities _angular_velocities
    (send _angular_velocities :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; diffbot_msgs/AngularVelocities _angular_velocities
       (send _angular_velocities :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; diffbot_msgs/AngularVelocities _angular_velocities
     (send _angular_velocities :deserialize buf ptr-) (incf ptr- (send _angular_velocities :serialization-length))
   ;;
   self)
  )

(setf (get diffbot_msgs::AngularVelocitiesStamped :md5sum-) "62b2cae704bd641c35dea902c2913994")
(setf (get diffbot_msgs::AngularVelocitiesStamped :datatype-) "diffbot_msgs/AngularVelocitiesStamped")
(setf (get diffbot_msgs::AngularVelocitiesStamped :definition-)
      "# This is a message that holds commanded angular joint velocity
Header header

# Use an array of type float32 for the two wheel joint velocities.
# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
AngularVelocities angular_velocities
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: diffbot_msgs/AngularVelocities
# This is a message that holds commanded angular joint velocity
# Use an array of type float32 for the two wheel joint velocities.
# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
float32[] joint
")



(provide :diffbot_msgs/AngularVelocitiesStamped "62b2cae704bd641c35dea902c2913994")


