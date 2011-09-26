;; For platforms where compiling a grovel file is too difficult (Windows), just
;; guess at appropriate values.
(cl:in-package #:python.cffi)

(cffi:defctype ssize-t (or #+cffi-features:x86 :int32
                           #+cffi-features:x86-64 :int64
                           (error "Unable to guess ssize-t.")))
(cl:defconstant size-of-ssize-t (cffi:foreign-type-size 'ssize-t))
(cffi:defctype size-t (or #+cffi-features:x86 :uint32
                          #+cffi-features:x86-64 :uint64
                          (error "Unable to guess size-t.")))
(cl:defconstant size-of-size-t (cffi:foreign-type-size 'size-t))

(cl:defconstant +eval-input+ 258)
(cl:defconstant +file-input+ 257)
(cl:defconstant +single-input+ 256)

(cl:defconstant +trace-call+ 0)
(cl:defconstant +trace-exception+ 1)
(cl:defconstant +trace-line+ 2)
(cl:defconstant +trace-return+ 3)
(cl:defconstant +trace-c-call+ 4)
(cl:defconstant +trace-c-exception+ 5)
(cl:defconstant +trace-c-return+ 6)

(cl:defconstant +lt+ 0)
(cl:defconstant +le+ 1)
(cl:defconstant +eq+ 2)
(cl:defconstant +ne+ 3)
(cl:defconstant +gt+ 4)
(cl:defconstant +ge+ 5)

(cl:defconstant +tpflags.have-get-char-buffer+ 1)
(cl:defconstant +tpflags.have-sequence-in+ 2)
(cl:defconstant +tpflags.gc+ 0)
(cl:defconstant +tpflags.have-inplaceops+ 8)
(cl:defconstant +tpflags.checktypes+ 16)
(cl:defconstant +tpflags.have-richcompare+ 32)
(cl:defconstant +tpflags.have-weakrefs+ 64)
(cl:defconstant +tpflags.have-iter+ 128)
(cl:defconstant +tpflags.have-class+ 256)
(cl:defconstant +tpflags.heaptype+ 512)
(cl:defconstant +tpflags.basetype+ 1024)
(cl:defconstant +tpflags.ready+ 4096)
(cl:defconstant +tpflags.readying+ 8192)
(cl:defconstant +tpflags.have-gc+ 16384)
(cl:defconstant +tpflags.have-stackless-extension+ 0)
(cl:defconstant +tpflags.have-index+ 131072)
(cl:defconstant +tpflags.have-version-tag+ 262144)
(cl:defconstant +tpflags.valid-version-tag+ 524288)
(cl:defconstant +tpflags.is-abstract+ 1048576)
(cl:defconstant +tpflags.have-newbuffer+ 2097152)
(cl:defconstant +tpflags.int-subclass+ 8388608)
(cl:defconstant +tpflags.long-subclass+ 16777216)
(cl:defconstant +tpflags.list-subclass+ 33554432)
(cl:defconstant +tpflags.tuple-subclass+ 67108864)
(cl:defconstant +tpflags.string-subclass+ 134217728)
(cl:defconstant +tpflags.unicode-subclass+ 268435456)
(cl:defconstant +tpflags.dict-subclass+ 536870912)
(cl:defconstant +tpflags.base-exc-subclass+ 1073741824)
(cl:defconstant +tpflags.type-subclass+ -2147483648)
(cl:defconstant +tpflags.default-external+ 131563)
(cl:defconstant +tpflags.default-core+ 393707)
(cl:defconstant +tpflags.default+ 131563)
