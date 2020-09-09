;; Common Lisp

(defun gcd (a b)
    (if (> b 0) (gcd b (mod a b)) a)
)

(princ "test")

(setq N 1000)

(setq A ())
(loop for i from 0 to (- N 1)
    do (setq A (append A (list i)))
)

(setq ans 0)
(loop for i in A
    do (loop for j in A
        do (setq ans (+ ans (gcd i j)))
    )
)
(print ans)
