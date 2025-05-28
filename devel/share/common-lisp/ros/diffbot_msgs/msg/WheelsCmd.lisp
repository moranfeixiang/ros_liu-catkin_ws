; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude WheelsCmd.msg.html

(cl:defclass <WheelsCmd> (roslisp-msg-protocol:ros-message)
  ((angular_velocities
    :reader angular_velocities
    :initarg :angular_velocities
    :type diffbot_msgs-msg:AngularVelocities
    :initform (cl:make-instance 'diffbot_msgs-msg:AngularVelocities)))
)

(cl:defclass WheelsCmd (<WheelsCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelsCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelsCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<WheelsCmd> is deprecated: use diffbot_msgs-msg:WheelsCmd instead.")))

(cl:ensure-generic-function 'angular_velocities-val :lambda-list '(m))
(cl:defmethod angular_velocities-val ((m <WheelsCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:angular_velocities-val is deprecated.  Use diffbot_msgs-msg:angular_velocities instead.")
  (angular_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelsCmd>) ostream)
  "Serializes a message object of type '<WheelsCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocities) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelsCmd>) istream)
  "Deserializes a message object of type '<WheelsCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocities) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelsCmd>)))
  "Returns string type for a message object of type '<WheelsCmd>"
  "diffbot_msgs/WheelsCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelsCmd)))
  "Returns string type for a message object of type 'WheelsCmd"
  "diffbot_msgs/WheelsCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelsCmd>)))
  "Returns md5sum for a message object of type '<WheelsCmd>"
  "85d3efcbf77039b4c3993e4dcc872362")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelsCmd)))
  "Returns md5sum for a message object of type 'WheelsCmd"
  "85d3efcbf77039b4c3993e4dcc872362")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelsCmd>)))
  "Returns full string definition for message of type '<WheelsCmd>"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%AngularVelocities angular_velocities~%================================================================================~%MSG: diffbot_msgs/AngularVelocities~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelsCmd)))
  "Returns full string definition for message of type 'WheelsCmd"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%AngularVelocities angular_velocities~%================================================================================~%MSG: diffbot_msgs/AngularVelocities~%# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelsCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocities))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelsCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelsCmd
    (cl:cons ':angular_velocities (angular_velocities msg))
))
