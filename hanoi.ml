let rec hanoi n x y z =
  if n > 1 then hanoi (n-1) x z y;
  print_endline ( x ^ "=>" ^ y );
  if n > 1 then hanoi (n-1) z y x;;

let n = read_line () in
hanoi (int_of_string n) "a" "b" "c";;