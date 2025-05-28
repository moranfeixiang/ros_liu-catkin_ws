; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude PIDStamped.msg.html

(cl:defclass <PIDStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pid
    :reader pid
    :initarg :pid
    :type diffbot_msgs-msg:PID
    :initform (cl:make-instance 'diffbot_msgs-msg:PID)))
)

(cl:defclass PIDStamped (<PIDStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<PIDStamped> is deprecated: use diffbot_msgs-msg:PIDStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PIDStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:header-val is deprecated.  Use diffbot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <PIDStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:pid-val is deprecated.  Use diffbot_msgs-msg:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDStamped>) ostream)
  "Serializes a message object of type '<PIDStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDStamped>) istream)
  "Deserializes a message object of type '<PIDStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDStamped>)))
  "Returns string type for a message object of type '<PIDStamped>"
  "diffbot_msgs/PIDStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDStamped)))
  "Returns string type for a message object of type 'PIDStamped"
  "diffbot_msgs/PIDStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDStamped>)))
  "Returns md5sum for a message object of type '<PIDStamped>"
  "76f54f0857a76c5e79d6f9203f257b96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDStamped)))
  "Returns md5sum for a message object of type 'PIDStamped"
  "76f54f0857a76c5e79d6f9203f257b96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDStamped>)))
  "Returns full string definition for message of type '<PIDStamped>"
  (cl:format cl:nil "# This is a message to hold the PID tuning values~%Header header~%~%# Required only for the low level rosserial base_controller~%# because rosserial doesn't support dynamic reconfigure~%PID pid~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/PID~%# This is a message to hold the PID tuning values~%# Required only for the low level rosserial base_controller~%# because rosserial doesn't support dynamic reconfigure~%float32 kp~%float32 ki~%float32 kd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDStamped)))
  "Returns full string definition for message of type 'PIDStamped"
  (cl:format cl:nil "# This is a message to hold the PID tuning values~%Header header~%~%# Required only for the low level rosserial base_controller~%# because rosserial doesn't support dynamic reconfigure~%PID pid~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/PID~%# This is a message to hold the PID tuning values~%# Required only for the low level rosserial base_controller~%# because rosserial doesn't support dynamic reconfigure~%float32 kp~%float32 ki~%float32 kd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDStamped
    (cl:cons ':header (header msg))
    (cl:cons ':pid (pid msg))
))
