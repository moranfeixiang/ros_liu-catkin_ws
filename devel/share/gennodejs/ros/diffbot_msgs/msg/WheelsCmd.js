// Auto-generated. Do not edit!

// (in-package diffbot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AngularVelocities = require('./AngularVelocities.js');

//-----------------------------------------------------------

class WheelsCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angular_velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('angular_velocities')) {
        this.angular_velocities = initObj.angular_velocities
      }
      else {
        this.angular_velocities = new AngularVelocities();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelsCmd
    // Serialize message field [angular_velocities]
    bufferOffset = AngularVelocities.serialize(obj.angular_velocities, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelsCmd
    let len;
    let data = new WheelsCmd(null);
    // Deserialize message field [angular_velocities]
    data.angular_velocities = AngularVelocities.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AngularVelocities.getMessageSize(object.angular_velocities);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diffbot_msgs/WheelsCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85d3efcbf77039b4c3993e4dcc872362';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WheelsCmd(null);
    if (msg.angular_velocities !== undefined) {
      resolved.angular_velocities = AngularVelocities.Resolve(msg.angular_velocities)
    }
    else {
      resolved.angular_velocities = new AngularVelocities()
    }

    return resolved;
    }
};

module.exports = WheelsCmd;
