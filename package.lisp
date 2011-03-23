;;;
;;; package.lisp -- absolute and relative path's to the JS scripts.
;;;

(defpackage #:jquery
  (:use     #:common-lisp
            #:asdf)
  (:export  #:*jquery.js*
            #:*jquery.form.js*
            #:*jquery.json.js*
            #:*jquery.ui.js*
            #:*jquery.console.js*
            #:relative
            #:jquery.js
            #:jquery.form.js
            #:jquery.json.js
            #:jquery.ui.js
            #:jquery.console.js))

(in-package #:jquery)

(defparameter *cl-jquery-path*
  (probe-file (component-pathname (find-system '#:cl-jquery))))

(defparameter *jquery.js*
  (probe-file (merge-pathnames "js/jquery.js" *cl-jquery-path*))
  "Absolute path to the `jquery.js' script")

(defparameter *jquery.form.js*
  (probe-file (merge-pathnames "js/jquery.form.js" *cl-jquery-path*))
  "Absolute path to the `jquery.form.js' script")

(defparameter *jquery.json.js*
  (probe-file (merge-pathnames "js/jquery.json.js" *cl-jquery-path*))
  "Absolute path to the `jquery.json.js' script")

(defparameter *jquery.ui.js*
  (probe-file (merge-pathnames "js/jquery.ui.js" *cl-jquery-path*))
  "Absolute path to the `jquery.ui.js' script")

(defparameter *jquery.console.js*
  (probe-file (merge-pathnames "js/jquery.console.js" *cl-jquery-path*))
  "Absolute path to the `jquery.console.js' script")

(defun relative (current-pathname absolute-pathname)
  "Make relative path (a string) from CURRENT-PATHNAME (a pathname) to
ABSOLUTE-PATHNAME (a pathname)."
  (let ((current  (rest (pathname-directory current-pathname)))
        (absolute (rest (pathname-directory absolute-pathname))))
    (labels ((%relative (a b)
               (if a
                   (if b
                       (if (string= (first a) (first b))
                           (%relative (rest a) (rest b))
                           (cons ".." (%relative (rest a) b)))
                       a)
                   b)))
      (format nil "~A/~A.~A" (reduce #'(lambda (xs x)
                                         (format nil "~A/~A" xs x))
                                     (%relative current absolute))
              (pathname-name absolute-pathname)
              (pathname-type absolute-pathname)))))

(defun jquery.js (current-pathname)
  "Make relative path (a string) from CURRENT-PATHNAME (a pathname) to the
`jquery.js' script."
  (relative current-pathname *jquery.js*))

(defun jquery.form.js (current-pathname)
  "Make relative path (a string) from CURRENT-PATHNAME (a pathname) to the
`jquery.form.js' script."
  (relative current-pathname *jquery.form.js*))

(defun jquery.json.js (current-pathname)
  "Make relative path (a string) from CURRENT-PATHNAME (a pathname) to the
`jquery.json.js' script."
  (relative current-pathname *jquery.json.js*))

(defun jquery.ui.js (current-pathname)
  "Make relative path (a string) from CURRENT-PATHNAME (a pathname) to the
`jquery.ui.js' script."
  (relative current-pathname *jquery.ui.js*))

(defun jquery.console.js (current-pathname)
  "Make relative path (a string) from CURRENT-PATHNAME (a pathname) to the
`jquery.console.js' script."
  (relative current-pathname *jquery.console.js*))
