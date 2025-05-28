;; Auto-generated. Do not edit!


(when (boundp 'diffbot_msgs::WheelsCmd)
  (if (not (find-package "DIFFBOT_MSGS"))
    (make-package "DIFFBOT_MSGS"))
  (shadow 'WheelsCmd (find-package "DIFFBOT_MSGS")))
(unless (find-package "DIFFBOT_MSGS::WHEELSCMD")
  (make-package "DIFFBOT_MSGS::WHEELSCMD"))

(in-package "ROS")
;;//! \htmlinclude WheelsCmd.msg.html


(defclass diffbot_msgs::WheelsCmd
  :super ros::object
  :slots (_angular_velocities ))

(defmethod diffbot_msgs::WheelsCmd
  (:init
   (&key
    ((:angular_velocities __angular_velocities) (instance diffbot_msgs::AngularVelocities :init))
    )
   (send-super :init)
   (setq _angular_velocities __angular_velocities)
   self)
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
    ;; diffbot_msgs/AngularVelocities _angular_velocities
    (send _angular_velocities :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; diffbot_msgs/AngularVelocities _angular_velocities
       (send _angular_velocities :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; diffbot_msgs/AngularVelocities _angular_velocities
     (send _angular_velocities :deserialize buf ptr-) (incf ptr- (send _angular_velocities :serialization-length))
   ;;
   self)
  )

(setf (get diffbot_msgs::WheelsCmd :md5sum-) "85d3efcbf77039b4c3993e4dcc872362")
(setf (get diffbot_msgs::WheelsCmd :datatype-) "diffbot_msgs/WheelsCmd")
(setf (get diffbot_msgs::WheelsCmd :definition-)
      "# This is a message that holds commanded angular joint velocity
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



(provide :diffbot_msgs/WheelsCmd "85d3efcbf77039b4c3993e4dcc872362")


