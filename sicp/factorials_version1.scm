(define (factorial n)
  (if (= 1 n)
      1
      (* n (factorial (- n 1)))))
      ;;(* n (factorial n-1)))))
      ;;Unbound variable: n-1
(factorial 4)



