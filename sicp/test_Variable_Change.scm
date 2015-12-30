(define (func a b c)
  (if (< c 2)2
      (func (+ a 1) (+ a 99) (+ 1 c))
      a))

(func 1 1 1)