;; Auto-generated. Do not edit!


(when (boundp 'trail::SquareService)
  (if (not (find-package "TRAIL"))
    (make-package "TRAIL"))
  (shadow 'SquareService (find-package "TRAIL")))
(unless (find-package "TRAIL::SQUARESERVICE")
  (make-package "TRAIL::SQUARESERVICE"))
(unless (find-package "TRAIL::SQUARESERVICEREQUEST")
  (make-package "TRAIL::SQUARESERVICEREQUEST"))
(unless (find-package "TRAIL::SQUARESERVICERESPONSE")
  (make-package "TRAIL::SQUARESERVICERESPONSE"))

(in-package "ROS")





(defclass trail::SquareServiceRequest
  :super ros::object
  :slots (_a ))

(defmethod trail::SquareServiceRequest
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass trail::SquareServiceResponse
  :super ros::object
  :slots (_square ))

(defmethod trail::SquareServiceResponse
  (:init
   (&key
    ((:square __square) 0)
    )
   (send-super :init)
   (setq _square (round __square))
   self)
  (:square
   (&optional __square)
   (if __square (setq _square __square)) _square)
  (:serialization-length
   ()
   (+
    ;; int32 _square
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _square
       (write-long _square s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _square
     (setq _square (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass trail::SquareService
  :super ros::object
  :slots ())

(setf (get trail::SquareService :md5sum-) "2449c4788bda2a0af56de75bb4fc040b")
(setf (get trail::SquareService :datatype-) "trail/SquareService")
(setf (get trail::SquareService :request) trail::SquareServiceRequest)
(setf (get trail::SquareService :response) trail::SquareServiceResponse)

(defmethod trail::SquareServiceRequest
  (:response () (instance trail::SquareServiceResponse :init)))

(setf (get trail::SquareServiceRequest :md5sum-) "2449c4788bda2a0af56de75bb4fc040b")
(setf (get trail::SquareServiceRequest :datatype-) "trail/SquareServiceRequest")
(setf (get trail::SquareServiceRequest :definition-)
      "int32 a
---
int32 square

")

(setf (get trail::SquareServiceResponse :md5sum-) "2449c4788bda2a0af56de75bb4fc040b")
(setf (get trail::SquareServiceResponse :datatype-) "trail/SquareServiceResponse")
(setf (get trail::SquareServiceResponse :definition-)
      "int32 a
---
int32 square

")



(provide :trail/SquareService "2449c4788bda2a0af56de75bb4fc040b")


