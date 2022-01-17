;; Auto-generated. Do not edit!


(when (boundp 'services_learning::SquareService)
  (if (not (find-package "SERVICES_LEARNING"))
    (make-package "SERVICES_LEARNING"))
  (shadow 'SquareService (find-package "SERVICES_LEARNING")))
(unless (find-package "SERVICES_LEARNING::SQUARESERVICE")
  (make-package "SERVICES_LEARNING::SQUARESERVICE"))
(unless (find-package "SERVICES_LEARNING::SQUARESERVICEREQUEST")
  (make-package "SERVICES_LEARNING::SQUARESERVICEREQUEST"))
(unless (find-package "SERVICES_LEARNING::SQUARESERVICERESPONSE")
  (make-package "SERVICES_LEARNING::SQUARESERVICERESPONSE"))

(in-package "ROS")





(defclass services_learning::SquareServiceRequest
  :super ros::object
  :slots (_a ))

(defmethod services_learning::SquareServiceRequest
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

(defclass services_learning::SquareServiceResponse
  :super ros::object
  :slots (_square ))

(defmethod services_learning::SquareServiceResponse
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

(defclass services_learning::SquareService
  :super ros::object
  :slots ())

(setf (get services_learning::SquareService :md5sum-) "2449c4788bda2a0af56de75bb4fc040b")
(setf (get services_learning::SquareService :datatype-) "services_learning/SquareService")
(setf (get services_learning::SquareService :request) services_learning::SquareServiceRequest)
(setf (get services_learning::SquareService :response) services_learning::SquareServiceResponse)

(defmethod services_learning::SquareServiceRequest
  (:response () (instance services_learning::SquareServiceResponse :init)))

(setf (get services_learning::SquareServiceRequest :md5sum-) "2449c4788bda2a0af56de75bb4fc040b")
(setf (get services_learning::SquareServiceRequest :datatype-) "services_learning/SquareServiceRequest")
(setf (get services_learning::SquareServiceRequest :definition-)
      "int32 a
---
int32 square

")

(setf (get services_learning::SquareServiceResponse :md5sum-) "2449c4788bda2a0af56de75bb4fc040b")
(setf (get services_learning::SquareServiceResponse :datatype-) "services_learning/SquareServiceResponse")
(setf (get services_learning::SquareServiceResponse :definition-)
      "int32 a
---
int32 square

")



(provide :services_learning/SquareService "2449c4788bda2a0af56de75bb4fc040b")


