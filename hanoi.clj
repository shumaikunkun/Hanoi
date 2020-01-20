(defn hanoi
  ([]
    (hanoi (read-string (read-line)) "a" "b" "c"))

  ([n x y z]
    (when (> n 1)
      (hanoi (- n 1) x z y))
    (println (str x "=>" y))
    (when (> n 1)
      (hanoi (- n 1) z y x))))

(hanoi)
