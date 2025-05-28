; Auto-generated. Do not edit!


(cl:in-package diffbot_msgs-msg)


;//! \htmlinclude Encoders.msg.html

(cl:defclass <Encoders> (roslisp-msg-protocol:ros-message)
  ((ticks
    :reader ticks
    :initarg :ticks
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Encoders (<Encoders>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Encoders>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Encoders)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diffbot_msgs-msg:<Encoders> is deprecated: use diffbot_msgs-msg:Encoders instead.")))

(cl:ensure-generic-function 'ticks-val :lambda-list '(m))
(cl:defmethod ticks-val ((m <Encoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diffbot_msgs-msg:ticks-val is deprecated.  Use diffbot_msgs-msg:ticks instead.")
  (ticks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Encoders>) ostream)
  "Serializes a message object of type '<Encoders>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'ticks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Encoders>) istream)
  "Deserializes a message object of type '<Encoders>"
  (cl:setf (cl:slot-value msg 'ticks) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'ticks)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Encoders>)))
  "Returns string type for a message object of type '<Encoders>"
  "diffbot_msgs/Encoders")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Encoders)))
  "Returns string type for a message object of type 'Encoders"
  "diffbot_msgs/Encoders")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Encoders>)))
  "Returns md5sum for a message object of type '<Encoders>"
  "e0f0e0582d1fb8eb1fb134e9dacef19f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Encoders)))
  "Returns md5sum for a message object of type 'Encoders"
  "e0f0e0582d1fb8eb1fb134e9dacef19f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Encoders>)))
  "Returns full string definition for message of type '<Encoders>"
  (cl:format cl:nil "# This is a message to hold number of ticks from Encoders~%# Use an array of size two of type int32 for the two encoders.~%# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.~%# An overflow is also unlikely with the encoders of the DG01D-E ~%# motor with its encoder because of its low encoder resolution~%int32[2] ticks~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Encoders)))
  "Returns full string definition for message of type 'Encoders"
  (cl:format cl:nil "# This is a message to hold number of ticks from Encoders~%# Use an array of size two of type int32 for the two encoders.~%# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.~%# An overflow is also unlikely with the encoders of the DG01D-E ~%# motor with its encoder because of its low encoder resolution~%int32[2] ticks~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Encoders>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ticks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Encoders>))
  "Converts a ROS message object to a list"
  (cl:list 'Encoders
    (cl:cons ':ticks (ticks msg))
))
