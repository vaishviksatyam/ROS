;; Auto-generated. Do not edit!


(when (boundp 'message_learning::myMsgType)
  (if (not (find-package "MESSAGE_LEARNING"))
    (make-package "MESSAGE_LEARNING"))
  (shadow 'myMsgType (find-package "MESSAGE_LEARNING")))
(unless (find-package "MESSAGE_LEARNING::MYMSGTYPE")
  (make-package "MESSAGE_LEARNING::MYMSGTYPE"))

(in-package "ROS")
;;//! \htmlinclude myMsgType.msg.html


(defclass message_learning::myMsgType
  :super ros::object
  :slots (_id _name _roll ))

(defmethod message_learning::myMsgType
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) 0)
    ((:roll __roll) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (round __name))
   (setq _roll (round __roll))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; int64 _name
    8
    ;; int64 _roll
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int64 _name
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _name (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _name) (= (length (_name . bv)) 2)) ;; bignum
              (write-long (ash (elt (_name . bv) 0) 0) s)
              (write-long (ash (elt (_name . bv) 1) -1) s))
             ((and (class _name) (= (length (_name . bv)) 1)) ;; big1
              (write-long (elt (_name . bv) 0) s)
              (write-long (if (>= _name 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _name s)(write-long (if (>= _name 0) 0 #xffffffff) s)))
     ;; int64 _roll
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _roll (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _roll) (= (length (_roll . bv)) 2)) ;; bignum
              (write-long (ash (elt (_roll . bv) 0) 0) s)
              (write-long (ash (elt (_roll . bv) 1) -1) s))
             ((and (class _roll) (= (length (_roll . bv)) 1)) ;; big1
              (write-long (elt (_roll . bv) 0) s)
              (write-long (if (>= _roll 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _roll s)(write-long (if (>= _roll 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _name
#+(or :alpha :irix6 :x86_64)
      (setf _name (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _name (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _roll
#+(or :alpha :irix6 :x86_64)
      (setf _roll (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _roll (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get message_learning::myMsgType :md5sum-) "99a91f415d35171986878c5468ff93a0")
(setf (get message_learning::myMsgType :datatype-) "message_learning/myMsgType")
(setf (get message_learning::myMsgType :definition-)
      "int64 id
int64 name
int64 roll

")



(provide :message_learning/myMsgType "99a91f415d35171986878c5468ff93a0")


