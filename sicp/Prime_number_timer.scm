
(define (IsPrime n)
   (if (= (remainder n 2) 0)
      false
      (IsPrimeThread n 3 (runtime))))

(define (IsPrimeThread n count start-time)
  (cond ((> count n) (return true (- (runtime) start-time)))
	((= (remainder n count) 0) (return false (- (runtime) start-time)))
	(else
	 (IsPrimeThread n (+ count 1)))))

(define (return op duration)
  (newline)
  (display duration)
  (cond ((= op true) (display "true"))
	((= op false) (display "false"))))
	


;(gcd 28 16)

(IsPrime 3)
;(return false 1.2)
