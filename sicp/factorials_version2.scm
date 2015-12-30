;;only with two para by presentzeng
(define (factorial n)
  (fact-iter 1 n))

(define (fact-iter counter max-count)
  (if (<= counter max-count)
      (* counter (fact-iter (+ counter 1) max-count))
      1))

(factorial 4)
      
