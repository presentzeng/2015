;;version 1
;;requires n steps and n space
;;trace expt(2 n) ten times
(define (expt b n)
  (if (= n 0)
      1
      (* (expt b (- n 1)) b)))


;;version 2
;;requires log(n) steps
(define (fast-expt b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
;;patch
;;     	((even? b) (square (fast-expt b (/ n 2))))
	(else
	 (* b (fast-expt b (- n 1))))))

(define (square x)
  (* x x))

(define (even? n)
  (=  (remainder n 2) 0))


(fast-expt 2 10)

