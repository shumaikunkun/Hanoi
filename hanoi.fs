let rec hanoi n x y z =
    if n > 1 then hanoi (n-1) x z y
    printfn "%s=>%s" x y
    if n > 1 then hanoi (n-1) z y x

hanoi 3 "a" "b" "c";;