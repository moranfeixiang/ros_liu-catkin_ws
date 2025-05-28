;; Auto-generated. Do not edit!


(when (boundp 'diffbot_msgs::Encoders)
  (if (not (find-package "DIFFBOT_MSGS"))
    (make-package "DIFFBOT_MSGS"))
  (shadow 'Encoders (find-package "DIFFBOT_MSGS")))
(unless (find-package "DIFFBOT_MSGS::ENCODERS")
  (make-package "DIFFBOT_MSGS::ENCODERS"))

(in-package "ROS")
;;//! \htmlinclude Encoders.msg.html


(defclass diffbot_msgs::Encoders
  :super ros::object
  :slots (_ticks ))

(defmethod diffbot_msgs::Encoders
  (:init
   (&key
    ((:ticks __ticks) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _ticks __ticks)
   self)
  (:ticks
   (&optional __ticks)
   (if __ticks (setq _ticks __ticks)) _ticks)
  (:serialization-length
   ()
   (+
    ;; int32[2] _ticks
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[2] _ticks
     (dotimes (i 2)
       (write-long (elt _ticks i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[2] _ticks
   (dotimes (i (length _ticks))
     (setf (elt _ticks i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get diffbot_msgs::Encoders :md5sum-) "e0f0e0582d1fb8eb1fb134e9dacef19f")
(setf (get diffbot_msgs::Encoders :datatype-) "diffbot_msgs/Encoders")
(setf (get diffbot_msgs::Encoders :definition-)
      "# This is a message to hold number of ticks from Encoders
# Use an array of size two of type int32 for the two encoders.
# int32 is used instead of int64 because it is not supporte by Arduino/Teensy.
# An overflow is also unlikely with the encoders of the DG01D-E 
# motor with its encoder because of its low encoder resolution
int32[2] ticks
")



(provide :diffbot_msgs/Encoders "e0f0e0582d1fb8eb1fb134e9dacef19f")


