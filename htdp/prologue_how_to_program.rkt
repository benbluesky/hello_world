;prologue: how to programe
(require 2htdp/image)
(require 2htdp/universe)

(+ 1 1)
(+ 2 2)
(* 3 3)
(- 4 2)
(/ 6 2)
(sqr 3)
(expt 2 3)
(sin 0)
(cos pi)
;#i prefix is short for "I don't really know the precise number so take that for now" or an inexact number.
(+ 2 (+ 3 4))
(+ 2 3 4)
(+ 2 (+ (* 3 3) 4))
(+ 2 (+ (* 3(/ 12 4)) 4))
(+ (* 5 5)(+ (* 3 (/ 12 4)) 4))
(+ 1 2 3 4 5 6 7 8 9 0)
(* 1 2 3 4 5 6 7 8 9 0)

;------------------------------------------
;Arithmetic and Arithmetic
"Hello world"
(string-append "hello" "world")
(string-append "hello " "world")
(string-append "hello" " " "world")
(+ (string-length "hello world") 20)
(number->string 42)
(string->number "42")

(string->number "hello world")
;Boolean
(and #true #true)
(and #true #false)
(or #true #false)
(or #false #false)
(not #false)

;convert two numbers into a Boolean
(> 10 9)
(< -1 0)
(= 42 9)
(>= 10 10)
(<= -1 0)
(string=? "design" "tinker")

(and (or(=(string-length "Hello world")
          (string->number "11"))
        (string=? "Hello world" "good morning"))
     (>=(+(string-length "Hello world") 60) 80))



(* (image-width .)(image-height .))

(circle 10 "solid" "red")

(rectangle 30 20 "outline" "blue")
(overlay (circle 5 "solid" "red")
         (rectangle 20 20 "solid" "blue"))

(overlay (rectangle 20 20 "solid" "blue")
         (circle 5 "solid" "red"))

(image-width (square 10 "solid" "red"))

(image-width
 (overlay (rectangle 20 20 "solid" "blue")
          (circle 5 "solid" "red")))
;empty-scene creates a scene; place-image places an image such a scene
(place-image (circle 5 "solid" "green")
             50 80
             (empty-scene 100 100))
;-----------------------------------------
;Input and Output

(define (y x) (* x x))
(y 1)
(y 2)
(y 3)
(y 4)
(y 5)

;First
;(define (FunctionName InputName) BodyExpression)
;is a function definition
;Second
;(FunctionName ArgumentExpression)
;is a funcition application
(empty-scene 100 60)
(place-image . 50 23 (empty-scene 100 60))

(place-image . 50 20 (empty-scene 100 60))
(place-image . 50 30 (empty-scene 100 60))
(place-image . 50 40 (empty-scene 100 60))


(define (picture-of-rocket height)
  (place-image . 50  height (empty-scene 100 60)))

(picture-of-rocket 0)
(picture-of-rocket 10)
(picture-of-rocket 20)
(picture-of-rocket  30)

(animate picture-of-rocket)

;-------------------------------------
;Many ways to compute

(define (sign x)
  (cond
    [(> x 0) 1]
    [(= x 0) 0]
    [(< x 0) -1]))

(sign 10)
(sign -5)
(sign 0)

;(cond
; [ConditionExpression1 ResultExpression1]
; [ConditionExpression1 ResultExpression2]
; ...
; [ConditionExpressionN ResultExpresssionN])

(define (picture-of-rocket.v2 height)
  (cond
    [(<= height 60)
     (place-image .50 height
                  (empty-scene 100 60))]
    [(> height 60)
     (place-image . 50 60
                  (empty-scene 100 60))]))




