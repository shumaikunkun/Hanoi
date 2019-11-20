#This is Aleph file

trans hanoi (n x y z) (
  if (> n 1) hanoi (- n 1) x z y
  println x "=>" y
  if (> n 1) hanoi (- n 1) z y x
)

hanoi 3 "a" "b" "c"
