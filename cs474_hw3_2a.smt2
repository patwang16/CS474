(declare-const l1 Real)
(declare-const u1 Real)
(declare-const l2 Real)
(declare-const u2 Real)

(assert (forall ((z Real)) 
    (=> 
        (and (< l1 z) (and (< z u1)(and(< l2 z)(< z u2)))) 
        (exists ((w Real)) 
            (and (< l1 w)(and (< w u1)(and (< l2 w)(and (< w u2)(not (= w z)))))
            )
        )
    )
))

(apply qe)
