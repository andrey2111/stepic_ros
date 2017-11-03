; Auto-generated. Do not edit!


(cl:in-package concatsrv-srv)


;//! \htmlinclude ConCat-request.msg.html

(cl:defclass <ConCat-request> (roslisp-msg-protocol:ros-message)
  ((first
    :reader first
    :initarg :first
    :type cl:string
    :initform "")
   (second
    :reader second
    :initarg :second
    :type cl:string
    :initform ""))
)

(cl:defclass ConCat-request (<ConCat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConCat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConCat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concatsrv-srv:<ConCat-request> is deprecated: use concatsrv-srv:ConCat-request instead.")))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <ConCat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concatsrv-srv:first-val is deprecated.  Use concatsrv-srv:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <ConCat-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concatsrv-srv:second-val is deprecated.  Use concatsrv-srv:second instead.")
  (second m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConCat-request>) ostream)
  "Serializes a message object of type '<ConCat-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'first))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'first))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'second))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConCat-request>) istream)
  "Deserializes a message object of type '<ConCat-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'first) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'first) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'second) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'second) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConCat-request>)))
  "Returns string type for a service object of type '<ConCat-request>"
  "concatsrv/ConCatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConCat-request)))
  "Returns string type for a service object of type 'ConCat-request"
  "concatsrv/ConCatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConCat-request>)))
  "Returns md5sum for a message object of type '<ConCat-request>"
  "02a66ab9a58339fab12650d18b17ba68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConCat-request)))
  "Returns md5sum for a message object of type 'ConCat-request"
  "02a66ab9a58339fab12650d18b17ba68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConCat-request>)))
  "Returns full string definition for message of type '<ConCat-request>"
  (cl:format cl:nil "string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConCat-request)))
  "Returns full string definition for message of type 'ConCat-request"
  (cl:format cl:nil "string first~%string second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConCat-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'first))
     4 (cl:length (cl:slot-value msg 'second))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConCat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConCat-request
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
))
;//! \htmlinclude ConCat-response.msg.html

(cl:defclass <ConCat-response> (roslisp-msg-protocol:ros-message)
  ((concat
    :reader concat
    :initarg :concat
    :type cl:string
    :initform ""))
)

(cl:defclass ConCat-response (<ConCat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConCat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConCat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name concatsrv-srv:<ConCat-response> is deprecated: use concatsrv-srv:ConCat-response instead.")))

(cl:ensure-generic-function 'concat-val :lambda-list '(m))
(cl:defmethod concat-val ((m <ConCat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader concatsrv-srv:concat-val is deprecated.  Use concatsrv-srv:concat instead.")
  (concat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConCat-response>) ostream)
  "Serializes a message object of type '<ConCat-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'concat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'concat))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConCat-response>) istream)
  "Deserializes a message object of type '<ConCat-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'concat) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'concat) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConCat-response>)))
  "Returns string type for a service object of type '<ConCat-response>"
  "concatsrv/ConCatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConCat-response)))
  "Returns string type for a service object of type 'ConCat-response"
  "concatsrv/ConCatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConCat-response>)))
  "Returns md5sum for a message object of type '<ConCat-response>"
  "02a66ab9a58339fab12650d18b17ba68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConCat-response)))
  "Returns md5sum for a message object of type 'ConCat-response"
  "02a66ab9a58339fab12650d18b17ba68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConCat-response>)))
  "Returns full string definition for message of type '<ConCat-response>"
  (cl:format cl:nil "string concat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConCat-response)))
  "Returns full string definition for message of type 'ConCat-response"
  (cl:format cl:nil "string concat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConCat-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'concat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConCat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConCat-response
    (cl:cons ':concat (concat msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConCat)))
  'ConCat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConCat)))
  'ConCat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConCat)))
  "Returns string type for a service object of type '<ConCat>"
  "concatsrv/ConCat")