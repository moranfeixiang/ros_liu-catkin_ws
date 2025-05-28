; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude AngularVelocitiesStamped.msg.html

(cl:defclass <AngularVelocitiesStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angular_velocities
    :reader angular_velocities
    :initarg :angular_velocities
    :type diffbot_msgs-msg:AngularVelocities
    :initform (cl:make-instance 'diffbot_msgs-msg:AngularVelocities)))
)

(cl:defclass AngularVelocitiesStamped (<AngularVelocitiesStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AngularVelocitiesStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AngularVelocitiesStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<AngularVelocitiesStamped> is deprecated: use diffbot_msgs-msg:AngularVelocitiesStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AngularVelocitiesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:header-val is deprecated.  Use diffbot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angular_velocities-val :lambda-list '(m))
(cl:defmethod angular_velocities-val ((m <AngularVelocitiesStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:angular_velocities-val is deprecated.  Use diffbot_msgs-msg:angular_velocities instead.")
  (angular_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AngularVelocitiesStamped>) ostream)
  "Serializes a message object of type '<AngularVelocitiesStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocities) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AngularVelocitiesStamped>) istream)
  "Deserializes a message object of type '<AngularVelocitiesStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocities) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AngularVelocitiesStamped>)))
  "Returns string type for a message object of type '<AngularVelocitiesStamped>"
  "diffbot_msgs/AngularVelocitiesStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AngularVelocitiesStamped)))
  "Returns string type for a message object of type 'AngularVelocitiesStamped"
  "diffbot_msgs/AngularVelocitiesStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AngularVelocitiesStamped>)))
  "Returns md5sum for a message object of type '<AngularVelocitiesStamped>"
  "62b2cae704bd641c35dea902c2913994")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AngularVelocitiesStamped)))
  "Returns md5sum for a message object of type 'AngularVelocitiesStamped"
  "62b2cae704bd641c35dea902c2913994")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AngularVelocitiesStamped>)))
  "Returns full string definition for message of type '<AngularVelocitiesStamped>"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%Header header~%~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%AngularVelocities angular_velocities~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/AngularVelocities~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AngularVelocitiesStamped)))
  "Returns full string definition for message of type 'AngularVelocitiesStamped"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%Header header~%~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%AngularVelocities angular_velocities~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: diffbot_msgs/AngularVelocities~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AngularVelocitiesStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocities))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AngularVelocitiesStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'AngularVelocitiesStamped
    (cl:cons ':header (header msg))
    (cl:cons ':angular_velocities (angular_velocities msg))
))
