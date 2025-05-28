// Auto-generated. Do not edit!

// (in-package diffbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelsCmd = require('./WheelsCmd.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelsCmdStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.wheels_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('wheels_cmd')) {
        this.wheels_cmd = initObj.wheels_cmd
      }
      else {
        this.wheels_cmd = new WheelsCmd();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelsCmdStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [wheels_cmd]
    bufferOffset = WheelsCmd.serialize(obj.wheels_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelsCmdStamped
    let len;
    let data = new WheelsCmdStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheels_cmd]
    data.wheels_cmd = WheelsCmd.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += WheelsCmd.getMessageSize(object.wheels_cmd);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/WheelsCmdStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a7314ac2bc5413723ab6ac388330f3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message that holds commanded angular joint velocity
    Header header
    
    # Use an array of type float32 for the two wheel joint velocities.
    # float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
    WheelsCmd wheels_cmd
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: diffbot_msgs/WheelsCmd
    # This is a message that holds commanded angular joint velocity
    # Use an array of type float32 for the two wheel joint velocities.
    # float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
    AngularVelocities angular_velocities
    ================================================================================
    MSG: diffbot_msgs/AngularVelocities
    # This is a message that holds commanded angular joint velocity
    # Use an array of type float32 for the two wheel joint velocities.
    # float32 is used instead of float64 because it is not supporte by Arduino/Teensy.
    float32[] joint
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelsCmdStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.wheels_cmd !== undefined) {
      resolved.wheels_cmd = WheelsCmd.Resolve(msg.wheels_cmd)
    }
    else {
      resolved.wheels_cmd = new WheelsCmd()
    }

    return resolved;
    }
};

module.exports = WheelsCmdStamped;
