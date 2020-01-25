import strutils

proc hanoi(n : int, x : string, y : string, z : string) =
  if n > 1:
    hanoi n - 1, x, z, y

  echo x, "=>", y

  if n > 1:
    hanoi n - 1, z, y, x

hanoi parseInt readLine stdin, "a", "b", "c"
