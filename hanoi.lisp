(defun hanoi(n x y z)
  (cond((> n 1)(hanoi(1- n) x z y))
  (format t "~A -> ~A~1%" x y)
  (cond((> n 1)(hanoi(1- n) z y x)))

(hanoi(read nil nil) 'a 'b 'c)
