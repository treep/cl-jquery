;;;
;;; cl-jquery.asd -- ASDF definition for CL-JQUERY system.
;;;

(asdf:defsystem cl-jquery
  :version "1.4.2"
  :serial  t
  :components ((:static-file "jquery.min.js")
               (:static-file "jquery.console.js")
               (:file "cl-jquery")))
