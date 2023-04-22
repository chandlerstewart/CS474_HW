; function and constants declarations
(declare-fun f (Real Real) Real)
(declare-fun g (Real) Real)
(declare-const e Real)
(declare-const c Real)

; assert formulas
(assert (= (f (f e e) e) (f e (f e e))))
(assert (= (f (f e e) c) (f e (f e c))))
(assert (= (f (f e c) e) (f e (f c e))))
(assert (= (f (f e c) c) (f e (f c c))))
(assert (= (f (f c e) e) (f c (f e e))))
(assert (= (f (f c e) c) (f c (f e c))))
(assert (= (f (f c c) e) (f c (f c e))))
(assert (= (f (f c c) c) (f c (f c c))))

(assert (and (= (f c e) c) (= (f e c) c)))
(assert (and (= (f e e) e) (= (f e e) e)))

(assert (and (= (f c (g c)) e) (= (f (g c) c) e)))
(assert (and (= (f e (g e)) e) (= (f (g e) e) e)))

(assert (and (= (f c c) c) (= (f c c) c) (not (= c e))))
(assert (and (= (f e c) e) (= (f c e) e) (not (= c e))))


(check-sat)