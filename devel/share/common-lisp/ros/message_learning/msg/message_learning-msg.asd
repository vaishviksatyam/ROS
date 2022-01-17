
(cl:in-package :asdf)

(defsystem "message_learning-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "myMsgType" :depends-on ("_package_myMsgType"))
    (:file "_package_myMsgType" :depends-on ("_package"))
  ))