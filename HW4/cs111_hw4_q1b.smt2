(declare-const r Real)
(declare-const s Real)

(define-fun R ((r Real) (s Real)) Real
  (+ 
    (* r s 90) 
    (* (- 1 r) s 30) 
    (* r (- 1 s) 20) 
    (* (- 1 r) 
    (- 1 s) 
    60)
  ))
(define-fun S ((r Real) (s Real)) Real
  (+ 
    (* r s 10) 
    (* (- 1 r) s 70) 
    (* r (- 1 s) 80) 
    (* (- 1 r) 
    (- 1 s) 40)
  ))

(assert 

        (forall ((s_ Real) (r_ Real))
        (not 
          (
        or
            (< 
              (S r s) 
              (S r s_)
            )
            (< 
              (R r s) 
              (R r_ s)
            ) 
          )
        )
))

(check-sat)

(get-model)