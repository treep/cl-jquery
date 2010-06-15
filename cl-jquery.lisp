;;;
;;; cl-jquery.lisp -- define pathes to the scripts.
;;;

(defpackage #:cl-jquery
  (:use #:cl #:asdf)
  (:export #:*jquery.min.js*
           #:*jquery.console.js*))

(in-package #:cl-jquery)

(defvar *cl-jquery-path*    (component-pathname (find-system '#:cl-jquery)))
(defvar *jquery.min.js*     (merge-pathnames "jquery.min.js" *cl-jquery-path*))
(defvar *jquery.console.js* (merge-pathnames "jquery.console.js" *cl-jquery-path*))
