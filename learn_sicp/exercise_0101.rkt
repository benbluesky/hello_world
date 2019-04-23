;ex1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4)(- 4 6))
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> a b)(< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4)(+ 6 7 a))
      (else 25))
(+ 2 (if (> b a) b a))
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

;ex1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) 
   (* 3 (* (- 6 2) (- 2 7))))

;ex1.3
(define (square x) (* x x))

(define (sum_of_squares x y)
         (+ (square x) (square y)))

(define (larger_sum_of_suqres a b c)
    (cond 
        ((and (>= a c) (>= b c)) (sum_of_squares a b)) 
        ((and (>= c a) (>= b a)) (sum_of_squares b c))
        ((and (>= c b) (>= a b)) (sum_of_squares a c))))

(larger_sum_of_suqres 10 11 12)
(larger_sum_of_suqres 5 7 9)
