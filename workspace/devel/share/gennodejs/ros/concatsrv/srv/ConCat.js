// Auto-generated. Do not edit!

// (in-package concatsrv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConCatRequest {
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
        this.first = '';
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConCatRequest
    // Serialize message field [first]
    bufferOffset = _serializer.string(obj.first, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.string(obj.second, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConCatRequest
    let len;
    let data = new ConCatRequest(null);
    // Deserialize message field [first]
    data.first = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.first.length;
    length += object.second.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'concatsrv/ConCatRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0d0db6e21f3fc1eb068f9cc22ba8beb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string first
    string second
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConCatRequest(null);
    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = ''
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = ''
    }

    return resolved;
    }
};

class ConCatResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.concat = null;
    }
    else {
      if (initObj.hasOwnProperty('concat')) {
        this.concat = initObj.concat
      }
      else {
        this.concat = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConCatResponse
    // Serialize message field [concat]
    bufferOffset = _serializer.string(obj.concat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConCatResponse
    let len;
    let data = new ConCatResponse(null);
    // Deserialize message field [concat]
    data.concat = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.concat.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'concatsrv/ConCatResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd92e3c6c18676d4026c12266bd6f5b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string concat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConCatResponse(null);
    if (msg.concat !== undefined) {
      resolved.concat = msg.concat;
    }
    else {
      resolved.concat = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ConCatRequest,
  Response: ConCatResponse,
  md5sum() { return '02a66ab9a58339fab12650d18b17ba68'; },
  datatype() { return 'concatsrv/ConCat'; }
};
