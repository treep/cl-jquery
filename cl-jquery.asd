
(defsystem cl-jquery
  :description "JQuery framework and plugins distribution for CL."
  :version     "2011-23-03"
  :serial      t
  :components
  ((:module
    "js"
    :components
    ((:static-file "jquery.js")
     (:static-file "jquery.form.js")
     (:static-file "jquery.json.js")
     (:static-file "jquery.ui.js")
     (:static-file "jquery.console.js")))
   (:file "package")))
