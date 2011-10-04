(defpackage #:python-cffi.test
  (:use #:cl #:cl-quickcheck))
(in-package #:python-cffi.test)

(pyffi::startup-python)

(quickcheck
  (let ((*size* (1- (expt 2 31))))
    (for-all ((v an-integer))
      (is= v (python.cffi:int.from-long v))
      (is= v (pyffi:eval (format nil "~d" v))))
    (for-all ((v a-boolean))
      (is= v (python.cffi:bool.from-long (if v 1 0)))
      (is= v (pyffi:eval (if v "True" "False"))))
    (for-all ((v an-integer))
      (is= v (python.cffi:long.from-long v))
      (is= v (pyffi:eval (format nil "~d" v)))))
  (let ((*size* (/ most-positive-single-float 2)))
    (for-all ((v a-real))
      (let ((v (coerce v 'double-float)))
        (is= v (python.cffi:float.from-double v))
        (is= v (pyffi:eval (format nil "~f" v)))))))
