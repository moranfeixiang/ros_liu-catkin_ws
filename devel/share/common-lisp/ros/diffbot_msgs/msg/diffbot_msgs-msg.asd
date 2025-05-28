
(cl:in-package :asdf)

(defsystem "diffbot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AngularVelocities" :depends-on ("_package_AngularVelocities"))
    (:file "_package_AngularVelocities" :depends-on ("_package"))
    (:file "AngularVelocitiesStamped" :depends-on ("_package_AngularVelocitiesStamped"))
    (:file "_package_AngularVelocitiesStamped" :depends-on ("_package"))
    (:file "Encoders" :depends-on ("_package_Encoders"))
    (:file "_package_Encoders" :depends-on ("_package"))
    (:file "EncodersStamped" :depends-on ("_package_EncodersStamped"))
    (:file "_package_EncodersStamped" :depends-on ("_package"))
    (:file "PID" :depends-on ("_package_PID"))
    (:file "_package_PID" :depends-on ("_package"))
    (:file "PIDStamped" :depends-on ("_package_PIDStamped"))
    (:file "_package_PIDStamped" :depends-on ("_package"))
    (:file "WheelsCmd" :depends-on ("_package_WheelsCmd"))
    (:file "_package_WheelsCmd" :depends-on ("_package"))
    (:file "WheelsCmdStamped" :depends-on ("_package_WheelsCmdStamped"))
    (:file "_package_WheelsCmdStamped" :depends-on ("_package"))
  ))