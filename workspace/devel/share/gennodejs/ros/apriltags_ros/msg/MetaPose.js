// Auto-generated. Do not edit!

// (in-package apriltags_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MetaPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.px = null;
      this.py = null;
      this.detected = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('px')) {
        this.px = initObj.px
      }
      else {
        this.px = 0.0;
      }
      if (initObj.hasOwnProperty('py')) {
        this.py = initObj.py
      }
      else {
        this.py = 0.0;
      }
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MetaPose
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [px]
    bufferOffset = _serializer.float64(obj.px, buffer, bufferOffset);
    // Serialize message field [py]
    bufferOffset = _serializer.float64(obj.py, buffer, bufferOffset);
    // Serialize message field [detected]
    bufferOffset = _serializer.bool(obj.detected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MetaPose
    let len;
    let data = new MetaPose(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [px]
    data.px = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [py]
    data.py = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [detected]
    data.detected = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'apriltags_ros/MetaPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2492d463eda8532269b3de2720ad7343';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MetaPose(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.px !== undefined) {
      resolved.px = msg.px;
    }
    else {
      resolved.px = 0.0
    }

    if (msg.py !== undefined) {
      resolved.py = msg.py;
    }
    else {
      resolved.py = 0.0
    }

    if (msg.detected !== undefined) {
      resolved.detected = msg.detected;
    }
    else {
      resolved.detected = false
    }

    return resolved;
    }
};

module.exports = MetaPose;
