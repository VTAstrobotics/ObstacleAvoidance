; Auto-generated. Do not edit!


(cl:in-package apriltags_ros-msg)


;//! \htmlinclude MetaPose.msg.html

(cl:defclass <MetaPose> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (px
    :reader px
    :initarg :px
    :type cl:float
    :initform 0.0)
   (py
    :reader py
    :initarg :py
    :type cl:float
    :initform 0.0)
   (detected
    :reader detected
    :initarg :detected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MetaPose (<MetaPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetaPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetaPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name apriltags_ros-msg:<MetaPose> is deprecated: use apriltags_ros-msg:MetaPose instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MetaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags_ros-msg:pose-val is deprecated.  Use apriltags_ros-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'px-val :lambda-list '(m))
(cl:defmethod px-val ((m <MetaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags_ros-msg:px-val is deprecated.  Use apriltags_ros-msg:px instead.")
  (px m))

(cl:ensure-generic-function 'py-val :lambda-list '(m))
(cl:defmethod py-val ((m <MetaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags_ros-msg:py-val is deprecated.  Use apriltags_ros-msg:py instead.")
  (py m))

(cl:ensure-generic-function 'detected-val :lambda-list '(m))
(cl:defmethod detected-val ((m <MetaPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader apriltags_ros-msg:detected-val is deprecated.  Use apriltags_ros-msg:detected instead.")
  (detected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetaPose>) ostream)
  "Serializes a message object of type '<MetaPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'px))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'py))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetaPose>) istream)
  "Deserializes a message object of type '<MetaPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'px) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'py) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'detected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetaPose>)))
  "Returns string type for a message object of type '<MetaPose>"
  "apriltags_ros/MetaPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetaPose)))
  "Returns string type for a message object of type 'MetaPose"
  "apriltags_ros/MetaPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetaPose>)))
  "Returns md5sum for a message object of type '<MetaPose>"
  "2492d463eda8532269b3de2720ad7343")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetaPose)))
  "Returns md5sum for a message object of type 'MetaPose"
  "2492d463eda8532269b3de2720ad7343")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetaPose>)))
  "Returns full string definition for message of type '<MetaPose>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 px~%float64 py~%bool detected~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetaPose)))
  "Returns full string definition for message of type 'MetaPose"
  (cl:format cl:nil "geometry_msgs/Pose pose~%float64 px~%float64 py~%bool detected~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetaPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetaPose>))
  "Converts a ROS message object to a list"
  (cl:list 'MetaPose
    (cl:cons ':pose (pose msg))
    (cl:cons ':px (px msg))
    (cl:cons ':py (py msg))
    (cl:cons ':detected (detected msg))
))
