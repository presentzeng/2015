 (inc x)
  (- x -1))
(define (dec x)
  (- x 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))


