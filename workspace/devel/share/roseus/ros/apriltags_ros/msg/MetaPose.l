;; Auto-generated. Do not edit!


(when (boundp 'apriltags_ros::MetaPose)
  (if (not (find-package "APRILTAGS_ROS"))
    (make-package "APRILTAGS_ROS"))
  (shadow 'MetaPose (find-package "APRILTAGS_ROS")))
(unless (find-package "APRILTAGS_ROS::METAPOSE")
  (make-package "APRILTAGS_ROS::METAPOSE"))

(in-package "ROS")
;;//! \htmlinclude MetaPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass apriltags_ros::MetaPose
  :super ros::object
  :slots (_pose _px _py _detected ))

(defmethod apriltags_ros::MetaPose
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:px __px) 0.0)
    ((:py __py) 0.0)
    ((:detected __detected) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _px (float __px))
   (setq _py (float __py))
   (setq _detected __detected)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:px
   (&optional __px)
   (if __px (setq _px __px)) _px)
  (:py
   (&optional __py)
   (if __py (setq _py __py)) _py)
  (:detected
   (&optional __detected)
   (if __detected (setq _detected __detected)) _detected)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _px
    8
    ;; float64 _py
    8
    ;; bool _detected
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _px
       (sys::poke _px (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _py
       (sys::poke _py (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _detected
       (if _detected (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _px
     (setq _px (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _py
     (setq _py (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _detected
     (setq _detected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get apriltags_ros::MetaPose :md5sum-) "2492d463eda8532269b3de2720ad7343")
(setf (get apriltags_ros::MetaPose :datatype-) "apriltags_ros/MetaPose")
(setf (get apriltags_ros::MetaPose :definition-)
      "geometry_msgs/Pose pose
float64 px
float64 py
bool detected
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :apriltags_ros/MetaPose "2492d463eda8532269b3de2720ad7343")


