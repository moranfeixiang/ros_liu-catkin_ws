; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude EncodersStamped.msg.html

(cl:defclass <EncodersStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (encoders
    :reader encoders
    :initarg :encoders
    :type diffbot_msgs-msg:Encoders
    :initform (cl:make-instance 'diffbot_msgs-msg:Encoders)))
)

(cl:defclass EncodersStamped (<EncodersStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncodersStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncodersStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<EncodersStamped> is deprecated: use diffbot_msgs-msg:EncodersStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EncodersStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:header-val is deprecated.  Use diffbot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'encoders-val :lambda-list '(m))
(cl:defmethod encoders-val ((m <EncodersStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:encoders-val is deprecated.  Use diffbot_msgs-msg:encoders instead.")
  (encoders m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncodersStamped>) ostream)
  "Serializes a message object of type '<EncodersStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'encoders) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncodersStamped>) istream)
  "Deserializes a message object of type '<EncodersStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'encoders) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncodersStamped>)))
  "Returns string type for a message object of type '<EncodersStamped>"
  "diffbot_msgs/EncodersStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncodersStamped)))
  "Returns string type for a message object of type 'EncodersStamped"
  "diffbot_msgs/EncodersStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncodersStamped>)))
  "Returns md5sum for a message object of type '<EncodersStamped>"
  "162975f999a4d19c3bdc0165594516da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncodersStamped)))
  "Returns md5sum for a message object of type 'EncodersStamped"
  "162975f999a4d19c3bdc0165594516da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncodersStamped>)))
  "Returns full string definition for message of type '<EncodersStamped>"
  (cl:format cl:nil "# This is a message to hold number of ticks from Encoders~%Header header~%~%# Use an array of size two of type int32 for the two encoders.~%# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.~%# An overflow is also unlikely with the encoders of the DG01D-E ~%# motor with its encoder because of its low encoder resolution~%Encoders encoders~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/Encoders~%# This is a message to hold number of ticks from Encoders~%# Use an array of size two of type int32 for the two encoders.~%# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.~%# An overflow is also unlikely with the encoders of the DG01D-E ~%# motor with its encoder because of its low encoder resolution~%int32[2] ticks~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncodersStamped)))
  "Returns full string definition for message of type 'EncodersStamped"
  (cl:format cl:nil "# This is a message to hold number of ticks from Encoders~%Header header~%~%# Use an array of size two of type int32 for the two encoders.~%# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.~%# An overflow is also unlikely with the encoders of the DG01D-E ~%# motor with its encoder because of its low encoder resolution~%Encoders encoders~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/Encoders~%# This is a message to hold number of ticks from Encoders~%# Use an array of size two of type int32 for the two encoders.~%# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.~%# An overflow is also unlikely with the encoders of the DG01D-E ~%# motor with its encoder because of its low encoder resolution~%int32[2] ticks~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncodersStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'encoders))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncodersStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'EncodersStamped
    (cl:cons ':header (header msg))
    (cl:cons ':encoders (encoders msg))
))
