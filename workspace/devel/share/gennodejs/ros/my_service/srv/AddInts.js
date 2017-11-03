// Auto-generated. Do not edit!

// (in-package my_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddIntsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first = null;
      this.second = null;
    }
    else {
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddIntsRequest
    // Serialize message field [first]
    bufferOffset = _serializer.int32(obj.first, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.int32(obj.second, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddIntsRequest
    let len;
    let data = new AddIntsRequest(null);
    // Deserialize message field [first]
    data.first = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_service/AddIntsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05577f62131ad26921bff0de6b2cb722';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 first
    int32 second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddIntsRequest(null);
    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0
    }

    return resolved;
    }
};

class AddIntsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum = null;
    }
    else {
      if (initObj.hasOwnProperty('sum')) {
        this.sum = initObj.sum
      }
      else {
        this.sum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddIntsResponse
    // Serialize message field [sum]
    bufferOffset = _serializer.int32(obj.sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddIntsResponse
    let len;
    let data = new AddIntsResponse(null);
    // Deserialize message field [sum]
    data.sum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_service/AddIntsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ba699c25c9418c0366f3595c0c8e8ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddIntsResponse(null);
    if (msg.sum !== undefined) {
      resolved.sum = msg.sum;
    }
    else {
      resolved.sum = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: AddIntsRequest,
  Response: AddIntsResponse,
  md5sum() { return '85a734c776d49ce7e013b15b395d3f69'; },
  datatype() { return 'my_service/AddInts'; }
};
