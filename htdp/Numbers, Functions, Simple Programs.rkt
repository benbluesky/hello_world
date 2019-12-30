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

;exercise 2.2.2

(define (dollar->euro dollar)
  (* 1.2 dollar))

;exercise 2.2.3
(define (trangle l h)
  (* 1/2 l h))
;exercise 2.2.4
(define (convert3 a b c)
  (+ a (* b 10) (* c 100)))
;exercise 2.2.5
(define (f n)
  (+ 10 (* n n)))

(define (f1 n1)
  (+ 20 (* 1/2  n1 n1)))

(define (f2 n2)
  (- 2 (/ 1 n2)))

; Word Problems
(define (wage h)
  (* 12 h))

;exercise 2.3.1
(define (tax wage)
  (* 0.15 wage))

(define (netpay h)
  (- (wage h)
     (tax (wage h))))

;this exercise is interesting, you need to use (wage h) represent a variable, or appling a function. so (wage h)
;is both a fuction and a variable of another fucntion.

;exercise 2.3.2








