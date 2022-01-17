; Auto-generated. Do not edit!


(cl:in-package services_learning-srv)


;//! \htmlinclude SquareService-request.msg.html

(cl:defclass <SquareService-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass SquareService-request (<SquareService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SquareService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SquareService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name services_learning-srv:<SquareService-request> is deprecated: use services_learning-srv:SquareService-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SquareService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader services_learning-srv:a-val is deprecated.  Use services_learning-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SquareService-request>) ostream)
  "Serializes a message object of type '<SquareService-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SquareService-request>) istream)
  "Deserializes a message object of type '<SquareService-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SquareService-request>)))
  "Returns string type for a service object of type '<SquareService-request>"
  "services_learning/SquareServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SquareService-request)))
  "Returns string type for a service object of type 'SquareService-request"
  "services_learning/SquareServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SquareService-request>)))
  "Returns md5sum for a message object of type '<SquareService-request>"
  "2449c4788bda2a0af56de75bb4fc040b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SquareService-request)))
  "Returns md5sum for a message object of type 'SquareService-request"
  "2449c4788bda2a0af56de75bb4fc040b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SquareService-request>)))
  "Returns full string definition for message of type '<SquareService-request>"
  (cl:format cl:nil "int32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SquareService-request)))
  "Returns full string definition for message of type 'SquareService-request"
  (cl:format cl:nil "int32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SquareService-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SquareService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SquareService-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude SquareService-response.msg.html

(cl:defclass <SquareService-response> (roslisp-msg-protocol:ros-message)
  ((square
    :reader square
    :initarg :square
    :type cl:integer
    :initform 0))
)

(cl:defclass SquareService-response (<SquareService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SquareService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SquareService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name services_learning-srv:<SquareService-response> is deprecated: use services_learning-srv:SquareService-response instead.")))

(cl:ensure-generic-function 'square-val :lambda-list '(m))
(cl:defmethod square-val ((m <SquareService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader services_learning-srv:square-val is deprecated.  Use services_learning-srv:square instead.")
  (square m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SquareService-response>) ostream)
  "Serializes a message object of type '<SquareService-response>"
  (cl:let* ((signed (cl:slot-value msg 'square)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SquareService-response>) istream)
  "Deserializes a message object of type '<SquareService-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'square) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SquareService-response>)))
  "Returns string type for a service object of type '<SquareService-response>"
  "services_learning/SquareServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SquareService-response)))
  "Returns string type for a service object of type 'SquareService-response"
  "services_learning/SquareServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SquareService-response>)))
  "Returns md5sum for a message object of type '<SquareService-response>"
  "2449c4788bda2a0af56de75bb4fc040b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SquareService-response)))
  "Returns md5sum for a message object of type 'SquareService-response"
  "2449c4788bda2a0af56de75bb4fc040b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SquareService-response>)))
  "Returns full string definition for message of type '<SquareService-response>"
  (cl:format cl:nil "int32 square~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SquareService-response)))
  "Returns full string definition for message of type 'SquareService-response"
  (cl:format cl:nil "int32 square~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SquareService-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SquareService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SquareService-response
    (cl:cons ':square (square msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SquareService)))
  'SquareService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SquareService)))
  'SquareService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SquareService)))
  "Returns string type for a service object of type '<SquareService>"
  "services_learning/SquareService")