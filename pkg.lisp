;;;; cl-gsl/pkg.lisp

;;;; Copyright (C) 2016 Takahiro Ishikawa
;;;;
;;;; This program is free software: you can redistribute it and/or modify
;;;; it under the terms of the GNU General Public License as published by
;;;; the Free Software Foundation, either version 3 of the License, or
;;;; (at your option) any later version.
;;;;
;;;; This program is distributed in the hope that it will be useful,
;;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;;;; GNU General Public License for more details.
;;;;
;;;; You should have received a copy of the GNU General Public License
;;;; along with this program. If not, see http://www.gnu.org/licenses/.

(cl:defpackage "GSL"
  (:use "CL")
  (:export ;; cl-gsl/vector.lisp
           "VECTOR-ALLOC"
           "VECTOR-CALLOC"
           "VECTOR-FREE"
           "VECTOR-GET"
           "VECTOR-SET"
           "VECTOR-PTR"
           "VECTOR-SET-ALL"
           "VECTOR-SET-ZERO"
           "VECTOR-SET-BASIS"
           "VECTOR-MEMCPY"
           "VECTOR-SWAP"
           "VECTOR-SWAP-ELEMENTS"
           "VECTOR-REVERSE"
           "VECTOR-ADD"
           "VECTOR-SUB"
           "VECTOR-MUL"
           "VECTOR-DIV"
           "VECTOR-SCALE"
           "VECTOR-ADD-CONSTANT"
           "VECTOR-MAX"
           "VECTOR-MIN"
           "VECTOR-MINMAX"
           "VECTOR-MAX-INDEX"
           "VECTOR-MIN-INDEX"
           "VECTOR-MINMAX-INDEX"
           "VECTOR-ISNULL"
           "VECTOR-ISPOS"
           "VECTOR-ISNEG"
           "VECTOR-ISNONNEG"
           "VECTOR-EQUAL"
           "VECTOR-SET-SEQUENCE"
           "MAKE-VECTOR"
           "VECTOR-TO-ARRAY"
           "VECTOR-READ"
           "VECTOR-WRITE"
           "VECTOR-MAP"
           "VECTOR-REDUCE"
           ;; cl-gsl/matrix.lisp
           "MATRIX-ALLOC"
           "MATRIX-CALLOC"
           "MATRIX-FREE"
           "MATRIX-GET"
           "MATRIX-SET"
           "MATRIX-PTR"
           "MATRIX-SET-ALL"
           "MATRIX-SET-ZERO"
           "MATRIX-SET-IDENTITY"
           "MATRIX-MEMCPY"
           "MATRIX-SWAP"
           "MATRIX-GET-ROW"
           "MATRIX-GET-COL"
           "MATRIX-SET-ROW"
           "MATRIX-SET-COL"
           "MATRIX-SWAP-ROWS"
           "MATRIX-SWAP-COLUMNS"
           "MATRIX-SWAP-ROWCOL"
           "MATRIX-TRANSPOSE-MEMCPY"
           "MATRIX-TRANSPOSE"
           "MATRIX-ADD"
           "MATRIX-SUB"
           "MATRIX-MUL-ELEMENTS"
           "MATRIX-DIV-ELEMENTS"
           "MATRIX-SCALE"
           "MATRIX-ADD-CONSTANT"
           "MATRIX-MAX"
           "MATRIX-MIN"
           "MATRIX-MINMAX"
           "MATRIX-MAX-INDEX"
           "MATRIX-MIN-INDEX"
           "MATRIX-MINMAX-INDEX"
           "MATRIX-ISNULL"
           "MATRIX-ISPOS"
           "MATRIX-ISNEG"
           "MATRIX-ISNONNEG"
           "MATRIX-EQUAL"
           "MATRIX-SET-SEQUENCE"
           "MATRIX-SET-2DARRAY"
           "MAKE-MATRIX"
           "MATRIX-TO-ARRAY"
           "MATRIX-TO-2DARRAY"
           "MATRIX-READ"
           "MATRIX-WRITE"
           ;; cl-gsl/rng.lisp
           "*RNG-TYPE*"
           "*RNG-SEED*"
           "RNG-ALLOC"
           "RNG-SET"
           "RNG-FREE"
           "RNG-GET"
           "RNG-UNIFORM"
           "RNG-UNIFORM-POS"
           "RNG-UNIFORM-INT"
           "RNG-NAME"
           "RNG-MAX"
           "RNG-MIN"
           "RNG-STATE"
           "RNG-SIZE"
           "RNG-ENV-SETUP"
           "RNG-MEMCPY"
           "RNG-CLONE"
           ;; cl-gsl/qrng.lisp
           "*QRNG-TYPE*"
           "QRNG-ALLOC"
           "QRNG-FREE"
           "QRNG-INIT"
           "QRNG-GET"
           "QRNG-NAME"
           "QRNG-SIZE"
           "QRNG-STATE"
           "QRNG-MEMCPY"
           "QRNG-CLONE"
           ;; cl-gsl/randist.lisp
           "RAN-GAUSSIAN"
           "RAN-GAUSSIAN-PDF"
           "RAN-GAUSSIAN-ZIGGURAT"
           "RAN-GAUSSIAN-RATIO-METHOD"
           "RAN-UGAUSSIAN"
           "RAN-UGAUSSIAN-PDF"
           "RAN-UGAUSSIAN-RATIO-METHOD"
           "CDF-GAUSSIAN-P"
           "CDF-GAUSSIAN-Q"
           "CDF-GAUSSIAN-PINV"
           "CDF-GAUSSIAN-QINV"
           "CDF-UGAUSSIAN-P"
           "CDF-UGAUSSIAN-Q"
           "CDF-UGAUSSIAN-PINV"
           "CDF-UGAUSSIAN-QINV"
           "RAN-GAUSSIAN-TAIL"
           "RAN-GAUSSIAN-TAIL-PDF"
           "RAN-UGAUSSIAN-TAIL"
           "RAN-UGAUSSIAN-TAIL-PDF"
           "RAN-BIVARIATE-GAUSSIAN"
           "RAN-BIVARIATE-GAUSSIAN-PDF"
           "RAN-EXPONENTIAL"
           "RAN-EXPONENTIAL-PDF"
           "CDF-EXPONENTIAL-P"
           "CDF-EXPONENTIAL-Q"
           "CDF-EXPONENTIAL-PINV"
           "CDF-EXPONENTIAL-QINV"
           "RAN-LAPLACE"
           "RAN-LAPLACE-PDF"
           "CDF-LAPLACE-P"
           "CDF-LAPLACE-Q"
           "CDF-LAPLACE-PINV"
           "CDF-LAPLACE-QINV"
           "RAN-CHISQ"
           "RAN-CHISQ-PDF"
           "CDF-CHISQ-P"
           "CDF-CHISQ-Q"
           "CDF-CHISQ-PINV"
           "CDF-CHISQ-QINV"
           "RAN-FDIST"
           "RAN-FDIST-PDF"
           "CDF-FDIST-P"
           "CDF-FDIST-Q"
           "CDF-FDIST-PINV"
           "CDF-FDIST-QINV"
           "RAN-TDIST"
           "RAN-TDIST-PDF"
           "CDF-TDIST-P"
           "CDF-TDIST-Q"
           "CDF-TDIST-PINV"
           "CDF-TDIST-QINV"
           "RAN-DIR-2D"
           "RAN-DIR-2D-TRIG-METHOD"
           "RAN-POISSON"
           "RAN-POISSON-PDF"
           "CDF-POISSON-P"
           "CDF-POISSON-Q"
           "RAN-BERNOULLI"
           "RAN-BERNOULLI-PDF"
           "RAN-BINOMIAL"
           "RAN-BINOMIAL-PDF"
           "CDF-BINOMIAL-P"
           "CDF-BINOMIAL-Q"))

(cl:in-package "GSL")

(cffi:define-foreign-library libgslcblas
  (:darwin "libgslcblas.dylib")
  (:unix "libgslcblas.so")
  (t (:default "libgslcblas")))

(cffi:define-foreign-library libgsl
  (:darwin "libgsl.dylib")
  (:unix "libgsl.so")
  (t (:default "libgsl")))

(cffi:use-foreign-library libgslcblas)
(cffi:use-foreign-library libgsl)
