
(cl:in-package :asdf)

(defsystem "my_message-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Message1" :depends-on ("_package_Message1"))
    (:file "_package_Message1" :depends-on ("_package"))
  ))