; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude AngularVelocities.msg.html

(cl:defclass <AngularVelocities> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AngularVelocities (<AngularVelocities>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AngularVelocities>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AngularVelocities)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<AngularVelocities> is deprecated: use diffbot_msgs-msg:AngularVelocities instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <AngularVelocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:joint-val is deprecated.  Use diffbot_msgs-msg:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AngularVelocities>) ostream)
  "Serializes a message object of type '<AngularVelocities>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AngularVelocities>) istream)
  "Deserializes a message object of type '<AngularVelocities>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AngularVelocities>)))
  "Returns string type for a message object of type '<AngularVelocities>"
  "diffbot_msgs/AngularVelocities")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AngularVelocities)))
  "Returns string type for a message object of type 'AngularVelocities"
  "diffbot_msgs/AngularVelocities")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AngularVelocities>)))
  "Returns md5sum for a message object of type '<AngularVelocities>"
  "edecb4b6fff50f927a908742515e167a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AngularVelocities)))
  "Returns md5sum for a message object of type 'AngularVelocities"
  "edecb4b6fff50f927a908742515e167a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AngularVelocities>)))
  "Returns full string definition for message of type '<AngularVelocities>"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AngularVelocities)))
  "Returns full string definition for message of type 'AngularVelocities"
  (cl:format cl:nil "# This is a message that holds commanded angular joint velocity~%# Use an array of type float32 for the two wheel joint velocities.~%# float32 is used instead of float64 because it is not supporte by Arduino/Teensy.~%float32[] joint~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AngularVelocities>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AngularVelocities>))
  "Converts a ROS message object to a list"
  (cl:list 'AngularVelocities
    (cl:cons ':joint (joint msg))
))
