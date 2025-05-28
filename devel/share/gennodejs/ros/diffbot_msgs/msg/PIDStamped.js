// Auto-generated. Do not edit!

// (in-package diffbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PID = require('./PID.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PIDStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pid')) {
        this.pid = initObj.pid
      }
      else {
        this.pid = new PID();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PIDStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pid]
    bufferOffset = PID.serialize(obj.pid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PIDStamped
    let len;
    let data = new PIDStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pid]
    data.pid = PID.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/PIDStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76f54f0857a76c5e79d6f9203f257b96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message to hold the PID tuning values
    Header header
    
    # Required only for the low level rosserial base_controller
    # because rosserial doesn't support dynamic reconfigure
    PID pid
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
    MSG: diffbot_msgs/PID
    # This is a message to hold the PID tuning values
    # Required only for the low level rosserial base_controller
    # because rosserial doesn't support dynamic reconfigure
    float32 kp
    float32 ki
    float32 kd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PIDStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pid !== undefined) {
      resolved.pid = PID.Resolve(msg.pid)
    }
    else {
      resolved.pid = new PID()
    }

    return resolved;
    }
};

module.exports = PIDStamped;
