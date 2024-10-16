
(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

; used implied conjuncts to break up CNF form
(assert (or q (not r)))
(assert (or r (not p)))
(assert (or (not q)(or r p)))
(assert (or p (or q (not q))))
(assert (or (not r) q))

(check-sat)
