;;prove that when n tends to infinity
;;Fib(n) = a certain equation

;;Fibo Equation
(define (Fib n)
  (cond ((= 0 n) 0)
	((= 1 n) 1)
	(else (+ (Fib(- n 1)) (Fib(- n 2))))))

;;x*x*x... n times
(define (times x n)
  (times_thread x n 1))

(define (times_thread x n count)
  (cond ((= n count) x)
	(else
	 (* x (times_thread x n (+ count 1))))))

;;factorial of n
  (define (factorial n)
  (fact-iter 1 1 n))


(define (fact-iter  product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product) (+ 1 counter) max-count)))

;;equation
(define (equation x)
  (/ (- (equation_thread1 5) (equation_thread2 5)) (factorial 5)))

(define (equation_thread1 n)
  (




