(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter1  product counter max-count)
  (if (= counter max-count)
      product
      (fact-iter (* product (+ 1 counter)) (+ 1 counter) max-count)))

(define (fact-iter  product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product) (+ 1 counter) max-count)))

(factorial 4)