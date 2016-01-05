;;question: how many different ways can we make change of 100, given 50, 25, 10, 5, 1;


;;make equation first
;;The number of ways to change amount a using n kinds of cons equals
;;the number of ways to change amount a using all but the first kind of coin +
;;the number of ways to change amount a-d using all n kinds of coins, 
;;where d is the denomination of the first kind of coins

;;amount equals zero we should count that as 1 way to make change

(define (change amount)
  (cc amount 5))

(define (cc amount kinds)
  (cond ((= amount 0) 1)
	((or (< amount 0) (= kinds 0)) 0)
	(else
	(+ (cc amount (- kinds 1)) (cc (- amount  (decre kinds)) kinds)))))

(define (decre kinds)
  (cond ((= kinds 1) 1)
	((= kinds 2) 5)
	((= kinds 3) 10)
	((= kinds 4) 25)
	((= kinds 5) 50)))

(change 100)