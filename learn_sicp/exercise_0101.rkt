;ex1.1


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
