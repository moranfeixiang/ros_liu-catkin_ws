; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude WheelsCmdStamped.msg.html

(cl:defclass <WheelsCmdStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wheels_cmd
    :reader wheels_cmd
    :initarg :wheels_cmd
    :type diffbot_msgs-msg:WheelsCmd
    :initform (cl:make-instance 'diffbot_msgs-msg:WheelsCmd)))
)

(cl:defclass WheelsCmdStamped (<WheelsCmdStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelsCmdStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelsCmdStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<WheelsCmdStamped> is deprecated: use diffbot_msgs-msg:WheelsCmdStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelsCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:header-val is deprecated.  Use diffbot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wheels_cmd-val :lambda-list '(m))
(cl:defmethod wheels_cmd-val ((m <WheelsCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:wheels_cmd-val is deprecated.  Use diffbot_msgs-msg:wheels_cmd instead.")
  (wheels_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelsCmdStamped>) ostream)
  "Serializes a message object of type '<WheelsCmdStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wheels_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelsCmdStamped>) istream)
  "Deserializes a message object of type '<WheelsCmdStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wheels_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelsCmdStamped>)))
  "Returns string type for a message object of type '<WheelsCmdStamped>"
  "diffbot_msgs/WheelsCmdStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelsCmdStamped)))
  "Returns string type for a message object of type 'WheelsCmdStamped"
  "diffbot_msgs/WheelsCmdStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelsCmdStamped>)))
  "Returns md5sum for a message object of type '<WheelsCmdStamped>"
  "0a7314ac2bc5413723ab6ac388330f3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelsCmdStamped)))
  "Returns md5sum for a message object of type 'WheelsCmdStamped"
  "0a7314ac2bc5413723ab6ac388330f3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelsCmdStamped>)))
  "Returns full string definition for message of type '<WheelsCmdStamped>"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%Header header~%~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%WheelsCmd wheels_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/WheelsCmd~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%AngularVelocities angular_velocities~%================================================================================~%MSG: diffbot_msgs/AngularVelocities~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelsCmdStamped)))
  "Returns full string definition for message of type 'WheelsCmdStamped"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%Header header~%~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%WheelsCmd wheels_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/WheelsCmd~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%AngularVelocities angular_velocities~%================================================================================~%MSG: diffbot_msgs/AngularVelocities~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelsCmdStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wheels_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelsCmdStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelsCmdStamped
    (cl:cons ':header (header msg))
    (cl:cons ':wheels_cmd (wheels_cmd msg))
))
