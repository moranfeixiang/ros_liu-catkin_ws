// Auto-generated. Do not edit!

// (in-package diffbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Encoders = require('./Encoders.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EncodersStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.encoders = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('encoders')) {
        this.encoders = initObj.encoders
      }
      else {
        this.encoders = new Encoders();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EncodersStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [encoders]
    bufferOffset = Encoders.serialize(obj.encoders, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EncodersStamped
    let len;
    let data = new EncodersStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [encoders]
    data.encoders = Encoders.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/EncodersStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '162975f999a4d19c3bdc0165594516da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message to hold number of ticks from Encoders
    Header header
    
    # Use an array of size two of type int32 for the two encoders.
    # int32 is used instead of int64 because it is not supporte by Arduino/Teensy.
    # An overflow is also unlikely with the encoders of the DG01D-E 
    # motor with its encoder because of its low encoder resolution
    Encoders encoders
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
    MSG: diffbot_msgs/Encoders
    # This is a message to hold number of ticks from Encoders
    # Use an array of size two of type int32 for the two encoders.
    # int32 is used instead of int64 because it is not supporte by Arduino/Teensy.
    # An overflow is also unlikely with the encoders of the DG01D-E 
    # motor with its encoder because of its low encoder resolution
    int32[2] ticks
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EncodersStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.encoders !== undefined) {
      resolved.encoders = Encoders.Resolve(msg.encoders)
    }
    else {
      resolved.encoders = new Encoders()
    }

    return resolved;
    }
};

module.exports = EncodersStamped;
