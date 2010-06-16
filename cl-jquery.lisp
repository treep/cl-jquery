;;;
;;; cl-jquery.lisp -- define pathes to the scripts.
;;;

(defpackage #:cl-jquery
  (:use #:cl #:asdf)
  (:export #:*jquery.js*
           #:*jquery.form.js*
           #:*jquery.json.js*
           #:*jquery.ui.js*
           #:*jquery.console.js*))

(in-package #:cl-jquery)

(defvar *cl-jquery-path*    (component-pathname (find-system '#:cl-jquery)))

(defvar *jquery.js*         (merge-pathnames "jquery.js"         *cl-jquery-path*))
(defvar *jquery.form.js*    (merge-pathnames "jquery.form.js"    *cl-jquery-path*))
(defvar *jquery.json.js*    (merge-pathnames "jquery.json.js"    *cl-jquery-path*))
(defvar *jquery.ui.js*      (merge-pathnames "jquery.ui.js"      *cl-jquery-path*))
(defvar *jquery.console.js* (merge-pathnames "jquery.console.js" *cl-jquery-path*))
