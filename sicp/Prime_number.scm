
(define (IsPrime n)
  (if (= (remainder n 2) 0)
      false
      (IsPrimeThread n 3)))

(define (IsPrimeThread n count)
  (cond ((> count n) true)
	((= (remainder n count) 0) false)
	(else
	 (IsPrimeThread n (+ count 1)))))


;(gcd 28 16)

(IsPrime 3)

