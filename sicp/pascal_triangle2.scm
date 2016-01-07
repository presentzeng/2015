(define (factorial n)
  (fact-iter 1 1 n))

(define (fact-iter  product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product) (+ 1 counter) max-count)))

;;(row col) = row!/(col! * (row-col)!)
;; in the equation  the row begins at zero

(define (pascal row col)
  (/ (factorial row) (* (factorial col) (factorial(- row col)))))

;(pascal 4 2)
(factorial 4)
