// Auto-generated. Do not edit!

// (in-package diffbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Encoders {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ticks = null;
    }
    else {
      if (initObj.hasOwnProperty('ticks')) {
        this.ticks = initObj.ticks
      }
      else {
        this.ticks = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoders
    // Check that the constant length array field [ticks] has the right length
    if (obj.ticks.length !== 2) {
      throw new Error('Unable to serialize array field ticks - length must be 2')
    }
    // Serialize message field [ticks]
    bufferOffset = _arraySerializer.int32(obj.ticks, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoders
    let len;
    let data = new Encoders(null);
    // Deserialize message field [ticks]
    data.ticks = _arrayDeserializer.int32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/Encoders';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0f0e0582d1fb8eb1fb134e9dacef19f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Encoders(null);
    if (msg.ticks !== undefined) {
      resolved.ticks = msg.ticks;
    }
    else {
      resolved.ticks = new Array(2).fill(0)
    }

    return resolved;
    }
};

module.exports = Encoders;
