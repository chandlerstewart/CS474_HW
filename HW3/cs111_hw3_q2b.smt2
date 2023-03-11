(declare-const l1 Real)
(declare-const u1 Real)
(declare-const l2 Real)
(declare-const u2 Real)
(declare-const l3 Real)
(declare-const u3 Real)
(declare-const l4 Real)
(declare-const u4 Real)

(define-fun phi ((l Real) (u Real)) Bool
  (
      < l u
  )
)

(define-fun psi ((la Real) (ua Real) (lb Real) (ub Real)) Bool
  
      (exists ((x Real))
    (
          and
          (< la x)
          (< lb x)
          (< x ua)
          (< x ub)
    )
      )
 
)

(assert
    (
        and
        (phi l1 u1)
        (phi l2 u2)
        (phi l3 u3)
        (phi l3 u3)
        (psi l1 u1 l2 u2)
        (psi l1 u1 l3 u3)
        (psi l2 u2 l4 u4)
        (psi l3 u3 l4 u4)
        (not (psi l1 u1 l4 u4))
        (not (psi l2 u2 l3 u3))
    )
)

(check-sat)