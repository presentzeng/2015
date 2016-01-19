(define (gcd a b)
  (cond ((= b 0) a)
	(else
	 (gcd b (remainder a b))))) 
;; a > b
(gcd 28 16)
  