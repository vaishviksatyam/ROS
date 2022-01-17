
(cl:in-package :asdf)

(defsystem "services_learning-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SquareService" :depends-on ("_package_SquareService"))
    (:file "_package_SquareService" :depends-on ("_package"))
  ))