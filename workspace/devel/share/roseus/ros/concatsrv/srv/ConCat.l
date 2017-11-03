;; Auto-generated. Do not edit!


(when (boundp 'concatsrv::ConCat)
  (if (not (find-package "CONCATSRV"))
    (make-package "CONCATSRV"))
  (shadow 'ConCat (find-package "CONCATSRV")))
(unless (find-package "CONCATSRV::CONCAT")
  (make-package "CONCATSRV::CONCAT"))
(unless (find-package "CONCATSRV::CONCATREQUEST")
  (make-package "CONCATSRV::CONCATREQUEST"))
(unless (find-package "CONCATSRV::CONCATRESPONSE")
  (make-package "CONCATSRV::CONCATRESPONSE"))

(in-package "ROS")





(defclass concatsrv::ConCatRequest
  :super ros::object
  :slots (_first _second ))

(defmethod concatsrv::ConCatRequest
  (:init
   (&key
    ((:first __first) "")
    ((:second __second) "")
    )
   (send-super :init)
   (setq _first (string __first))
   (setq _second (string __second))
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
    ;; string _first
    4 (length _first)
    ;; string _second
    4 (length _second)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _first
       (write-long (length _first) s) (princ _first s)
     ;; string _second
       (write-long (length _second) s) (princ _second s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _first
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _first (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _second
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _second (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass concatsrv::ConCatResponse
  :super ros::object
  :slots (_concat ))

(defmethod concatsrv::ConCatResponse
  (:init
   (&key
    ((:concat __concat) "")
    )
   (send-super :init)
   (setq _concat (string __concat))
   self)
  (:concat
   (&optional __concat)
   (if __concat (setq _concat __concat)) _concat)
  (:serialization-length
   ()
   (+
    ;; string _concat
    4 (length _concat)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _concat
       (write-long (length _concat) s) (princ _concat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _concat
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _concat (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass concatsrv::ConCat
  :super ros::object
  :slots ())

(setf (get concatsrv::ConCat :md5sum-) "02a66ab9a58339fab12650d18b17ba68")
(setf (get concatsrv::ConCat :datatype-) "concatsrv/ConCat")
(setf (get concatsrv::ConCat :request) concatsrv::ConCatRequest)
(setf (get concatsrv::ConCat :response) concatsrv::ConCatResponse)

(defmethod concatsrv::ConCatRequest
  (:response () (instance concatsrv::ConCatResponse :init)))

(setf (get concatsrv::ConCatRequest :md5sum-) "02a66ab9a58339fab12650d18b17ba68")
(setf (get concatsrv::ConCatRequest :datatype-) "concatsrv/ConCatRequest")
(setf (get concatsrv::ConCatRequest :definition-)
      "string first
string second
---
string concat
")

(setf (get concatsrv::ConCatResponse :md5sum-) "02a66ab9a58339fab12650d18b17ba68")
(setf (get concatsrv::ConCatResponse :datatype-) "concatsrv/ConCatResponse")
(setf (get concatsrv::ConCatResponse :definition-)
      "string first
string second
---
string concat
")



(provide :concatsrv/ConCat "02a66ab9a58339fab12650d18b17ba68")


