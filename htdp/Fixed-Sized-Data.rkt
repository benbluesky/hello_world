;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Fixed-Sized-Data) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;Arithmetic
(sin 0)
(/ 4 6)
(sqrt  2)
(define x 3)
(define y 4)
(define (z x y)
  (sqrt (+ (expt x 2) (expt y 2))))
;The Arithmetic of Strings
(define prefix "hello")
(define suffix "world")
(define (expression prefix suffix)
  (string-append prefix "_" suffix))

(define str "helloworld")
(define i 5)
(string-append (string-ith str 0) (string-ith str 1) (string-ith str 2) (string-ith str 3) (string-ith str 4)
               "_" (string-ith str 5) (string-ith str 6) (string-ith str 7) (string-ith str 8)
               (string-ith str 9) )

(substring "helloworld" 0 2)



