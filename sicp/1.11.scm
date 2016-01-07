;;recursive version
(define (func n)
  (cond ((< n 3) n)
	(else
	 (+ (func(- n 1)) 
	    (* 2 (func(- n 2)))
	    (* 3 (func(- n 3)))))))


;;iterative version
(define (func1 n)
  (iter 0 1 2 0 n))

;(define (iter fir sec thir index n)
 ; (if (= i n)
