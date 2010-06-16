;;;
;;; cl-jquery.asd -- ASDF definition for CL-JQUERY system.
;;;

(asdf:defsystem cl-jquery
  :description "JQuery framework and plugins distribution for CL."
  :version "1.4.2"
  :serial  t
  :components ((:static-file "jquery.js")
               (:static-file "jquery.form.js")
               (:static-file "jquery.json.js")
               (:static-file "jquery.ui.js")
               (:static-file "jquery.console.js")
               (:file "cl-jquery")))
