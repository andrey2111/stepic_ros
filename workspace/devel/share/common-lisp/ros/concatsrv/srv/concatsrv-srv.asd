
(cl:in-package :asdf)

(defsystem "concatsrv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ConCat" :depends-on ("_package_ConCat"))
    (:file "_package_ConCat" :depends-on ("_package"))
  ))