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

class AngularVelocities {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint = null;
    }
    else {
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AngularVelocities
    // Serialize message field [joint]
    bufferOffset = _arraySerializer.float32(obj.joint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AngularVelocities
    let len;
    let data = new AngularVelocities(null);
    // Deserialize message field [joint]
    data.joint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/AngularVelocities';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edecb4b6fff50f927a908742515e167a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new AngularVelocities(null);
    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = []
    }

    return resolved;
    }
};

module.exports = AngularVelocities;
