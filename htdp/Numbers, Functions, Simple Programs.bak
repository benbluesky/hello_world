;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Numbers, Functions, Simple Programs|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;2.1 Numbers and Arithemic
(+ 5 5)
(+ -5 5)
(+ 5 -5)
(- 5 5)
(* 3 4)
(/ 8 12)

(* (+ 2 2)(/ (* (+ 3 5)(/ 30 10)) 2))

(sqrt 100)
(expt 10 2)
(remainder 100 30)
(log 100)
(sin (/ pi 3))

;exercise 2.1.1
(sqr 4)
(sin 0)
(max 10 100)

; exercise 2.1.2
(sqrt 4)
(sqrt 2)
(sqrt -1)

;2.2 Variables and Proframs

(define (area-of-disk r)
  (* 3.14 (sqr r)))

(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(area-of-ring 5 3)

;exercise 2.2.1

(define (f-c f)
  (* (- f 32) 5/9))

