;;cube root
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
		 x)))

;(define (improve guess x)
 ; (average guess (/ x guess)))

(define (improve guess x)
  (devide (* 2 guess) (/ x (square guess))))



(define (devide  x y)
  (/ ( + x y) 3))

;(define (good-enough? guess x)
 ;(< (abs (- (cube guess) x)) 0.01))

(define (cube x)
  (* x x x))

(define (good-enough? guess x)
  (< (/ (abs (- (cube guess) x)) x) 0.01))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;(improve   2.0800838232385224   9.0)
(sqrt 9000000000000000100000000000000)
