;; Auto-generated. Do not edit!


(when (boundp 'diffbot_msgs::WheelsCmdStamped)
  (if (not (find-package "DIFFBOT_MSGS"))
    (make-package "DIFFBOT_MSGS"))
  (shadow 'WheelsCmdStamped (find-package "DIFFBOT_MSGS")))
(unless (find-package "DIFFBOT_MSGS::WHEELSCMDSTAMPED")
  (make-package "DIFFBOT_MSGS::WHEELSCMDSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude WheelsCmdStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diffbot_msgs::WheelsCmdStamped
  :super ros::object
  :slots (_header _wheels_cmd ))

(defmethod diffbot_msgs::WheelsCmdStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wheels_cmd __wheels_cmd) (instance diffbot_msgs::WheelsCmd :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _wheels_cmd __wheels_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wheels_cmd
   (&rest __wheels_cmd)
   (if (keywordp (car __wheels_cmd))
       (send* _wheels_cmd __wheels_cmd)
     (progn
       (if __wheels_cmd (setq _wheels_cmd (car __wheels_cmd)))
       _wheels_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; diffbot_msgs/WheelsCmd _wheels_cmd
    (send _wheels_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; diffbot_msgs/WheelsCmd _wheels_cmd
       (send _wheels_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; diffbot_msgs/WheelsCmd _wheels_cmd
     (send _wheels_cmd :deserialize buf ptr-) (incf ptr- (send _wheels_cmd :serialization-length))
   ;;
   self)
  )

(setf (get diffbot_msgs::WheelsCmdStamped :md5sum-) "0a7314ac2bc5413723ab6ac388330f3c")
(setf (get diffbot_msgs::WheelsCmdStamped :datatype-) "diffbot_msgs/WheelsCmdStamped")
(setf (get diffbot_msgs::WheelsCmdStamped :definition-)
      "# This is a message that holds commanded angular joint velocity
Header header

# Use an array of type float32 for the two wheel joint velocities.
# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
WheelsCmd wheels_cmd
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
MSG: diffbot_msgs/WheelsCmd
# This is a message that holds commanded angular joint velocity
# Use an array of type float32 for the two wheel joint velocities.
# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
AngularVelocities angular_velocities
================================================================================
MSG: diffbot_msgs/AngularVelocities
# This is a message that holds commanded angular joint velocity
# Use an array of type float32 for the two wheel joint velocities.
# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
float32[] joint
")



(provide :diffbot_msgs/WheelsCmdStamped "0a7314ac2bc5413723ab6ac388330f3c")


