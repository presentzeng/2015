;;func (line row) = func(line-1, row) + func(line-1, row-1)
;;    1
;;   123
;;  13 31

(define (pascal line row)
  (cond ((or (< row 0) (> row line)) 0)
	((= line 1) 1)
	((= line 2) 1)
	((= row 1) 1)
	((= row line) 1)
	(else
	(+ (pascal (- line 1) (- row 1)) (pascal (- line 1) row)))))

(pascal 5 2)
		
