(define (Fib n)
  (cond ((= 0 n) 0)
	((= 1 n) 1)
	(else (+ (Fib(- n 1)) (Fib(- n 2))))))
        ;;wrong example
	;;(else (+ Fib(- n 1) Fib(- n 2)))))     

(Fib 3)