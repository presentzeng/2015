 (define (inc x)
  (- x -1))
(define (dec x)
  (- x 1))

(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))

(plus 3 5)