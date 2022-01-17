// Auto-generated. Do not edit!

// (in-package services_learning.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SquareServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SquareServiceRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SquareServiceRequest
    let len;
    let data = new SquareServiceRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'services_learning/SquareServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c9fb1a886e81e3162a5c87bf55c072b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SquareServiceRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

class SquareServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.square = null;
    }
    else {
      if (initObj.hasOwnProperty('square')) {
        this.square = initObj.square
      }
      else {
        this.square = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SquareServiceResponse
    // Serialize message field [square]
    bufferOffset = _serializer.int32(obj.square, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SquareServiceResponse
    let len;
    let data = new SquareServiceResponse(null);
    // Deserialize message field [square]
    data.square = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'services_learning/SquareServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d99d7e4ed611bb1ba8a036b291e1ffb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 square
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SquareServiceResponse(null);
    if (msg.square !== undefined) {
      resolved.square = msg.square;
    }
    else {
      resolved.square = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SquareServiceRequest,
  Response: SquareServiceResponse,
  md5sum() { return '2449c4788bda2a0af56de75bb4fc040b'; },
  datatype() { return 'services_learning/SquareService'; }
};
