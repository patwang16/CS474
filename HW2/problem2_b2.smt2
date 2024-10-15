(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(define-fun formula1 () Bool
    (and (or q (not r))(and (or r (not p))(and (or (not q)(or r p))(and (or p (or q (not q)))(or (not r) q))))))

(define-fun formula2 () Bool
    (and (or q (not r))(and (or r (not p))(and (or (not q)(or r p))(and (or p (or q (not q)))(and (or q (not p))(and (or r (not q))(and (or (not r)(or r p))(and (or (not p)(or r p))(and (or (not q)(or q r))(and (or r (not r))(or q (not q)))))))))))))

(assert (distinct formula1 formula2))
; if formula1 and formula2 are distinct aka not equivalent, assertion will hold and will output sat
; if formula1 and formula2 are not distinct aka equivalent, assertion will not hold and will output unsat
(check-sat)