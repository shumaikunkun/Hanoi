; This is Scheme code

(define (hanoi n x y z)(if(> n 1)(hanoi (- n 1) x z y))(print x "=>" y)(if(> n 1)(hanoi (- n 1) z y x)))
(print (hanoi (read) "a" "b" "c"))
