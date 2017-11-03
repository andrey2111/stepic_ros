;; Auto-generated. Do not edit!


(when (boundp 'my_service::AddInts)
  (if (not (find-package "MY_SERVICE"))
    (make-package "MY_SERVICE"))
  (shadow 'AddInts (find-package "MY_SERVICE")))
(unless (find-package "MY_SERVICE::ADDINTS")
  (make-package "MY_SERVICE::ADDINTS"))
(unless (find-package "MY_SERVICE::ADDINTSREQUEST")
  (make-package "MY_SERVICE::ADDINTSREQUEST"))
(unless (find-package "MY_SERVICE::ADDINTSRESPONSE")
  (make-package "MY_SERVICE::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass my_service::AddIntsRequest
  :super ros::object
  :slots (_first _second ))

(defmethod my_service::AddIntsRequest
  (:init
   (&key
    ((:first __first) 0)
    ((:second __second) 0)
    )
   (send-super :init)
   (setq _first (round __first))
   (setq _second (round __second))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:serialization-length
   ()
   (+
    ;; int32 _first
    4
    ;; int32 _second
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _first
       (write-long _first s)
     ;; int32 _second
       (write-long _second s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _first
     (setq _first (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _second
     (setq _second (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_service::AddIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod my_service::AddIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_service::AddInts
  :super ros::object
  :slots ())

(setf (get my_service::AddInts :md5sum-) "85a734c776d49ce7e013b15b395d3f69")
(setf (get my_service::AddInts :datatype-) "my_service/AddInts")
(setf (get my_service::AddInts :request) my_service::AddIntsRequest)
(setf (get my_service::AddInts :response) my_service::AddIntsResponse)

(defmethod my_service::AddIntsRequest
  (:response () (instance my_service::AddIntsResponse :init)))

(setf (get my_service::AddIntsRequest :md5sum-) "85a734c776d49ce7e013b15b395d3f69")
(setf (get my_service::AddIntsRequest :datatype-) "my_service/AddIntsRequest")
(setf (get my_service::AddIntsRequest :definition-)
      "int32 first
int32 second
---
int32 sum
")

(setf (get my_service::AddIntsResponse :md5sum-) "85a734c776d49ce7e013b15b395d3f69")
(setf (get my_service::AddIntsResponse :datatype-) "my_service/AddIntsResponse")
(setf (get my_service::AddIntsResponse :definition-)
      "int32 first
int32 second
---
int32 sum
")



(provide :my_service/AddInts "85a734c776d49ce7e013b15b395d3f69")


