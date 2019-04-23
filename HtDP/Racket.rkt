;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Racket) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#lang slideshow
(define (square n)
  ; A semi-colon starts a line comment.
  ; The expression below is the function body.
  (filled-rectangle n n))
(define(four p)
  (define two-p(hc-append p p))
  (vc-append two-p two-p))
(define(checker p1 p2)
  (let([p12(hc-append p1 p2)]
       [p21(hc-append p2 p1)])
    (vc-append p12 p21)))
(define (checkerboard p)
  (let* ([rp (colorize p "red")]
         [bp (colorize p "green")]
         [c (checker rp bp)]
         [c4 (four c)])
    (four c4)))
(define (series mk)
  (hc-append 10 (mk 5)(mk 10) (mk 20) (mk 40)))
(define series1
  (lambda (mk)
    (hc-append 10 (mk 5) (mk 10) (mk 15) (mk 20))))
(define (rgb-series mk)
  (vc-append
   (series (lambda (sz) (colorize (mk sz) "red")))
   (series (lambda (sz) (colorize (mk sz) "green")))
   (series (lambda (sz) (colorize (mk sz) "blue")))))
(define (rgb-maker mk)
  (lambda (sz)
    (vc-append (colorize (mk sz) "red")
               (colorize (mk sz) "green")
               (colorize (mk sz) "blue"))))
(define (rainbow p)
  (map (lambda (colour)
         (colorize p colour))
       (list "red" "black" "yellow" "orange" "green" "blue" "purple")))
(require pict/flash)
(require slideshow/code)
(define-syntax pict+code
  (syntax-rules ()
    [(pict+code expr)
     (hc-append 10
                expr
                (code expr))]))
(require racket/class
         racket/gui/base)
(define f (new frame% [label "M Art"]
                      [width 300]
                      [height 300]
                      [alignment '(center center)]))
(define (add-drawing p)
  (let ([drawer (make-pict-drawer p)])
    (new canvas% [parent f]
                 [style '(border)]
                 [paint-callback (lambda (self dc)
                                   (drawer dc 0 0))])))