;; Auto-generated. Do not edit!


(when (boundp 'diffbot_msgs::PID)
  (if (not (find-package "DIFFBOT_MSGS"))
    (make-package "DIFFBOT_MSGS"))
  (shadow 'PID (find-package "DIFFBOT_MSGS")))
(unless (find-package "DIFFBOT_MSGS::PID")
  (make-package "DIFFBOT_MSGS::PID"))

(in-package "ROS")
;;//! \htmlinclude PID.msg.html


(defclass diffbot_msgs::PID
  :super ros::object
  :slots (_kp _ki _kd ))

(defmethod diffbot_msgs::PID
  (:init
   (&key
    ((:kp __kp) 0.0)
    ((:ki __ki) 0.0)
    ((:kd __kd) 0.0)
    )
   (send-super :init)
   (setq _kp (float __kp))
   (setq _ki (float __ki))
   (setq _kd (float __kd))
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; float32 _kp
    4
    ;; float32 _ki
    4
    ;; float32 _kd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _kp
     (setq _kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ki
     (setq _ki (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd
     (setq _kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get diffbot_msgs::PID :md5sum-) "08d0ca1f582560895ecba909de1d88ec")
(setf (get diffbot_msgs::PID :datatype-) "diffbot_msgs/PID")
(setf (get diffbot_msgs::PID :definition-)
      "# This is a message to hold the PID tuning values
# Required only for the low level rosserial base_controller
# because rosserial doesn't support dynamic reconfigure
float32 kp
float32 ki
float32 kd
")



(provide :diffbot_msgs/PID "08d0ca1f582560895ecba909de1d88ec")


