hanoi := method(n, x, y, z,
  if(n > 1, hanoi(n - 1, x, z, y))
  write(x, "=>", y, "\n")
  if(n > 1, hanoi(n - 1, z, y, x))
)

n := File standardInput readLine asNumber

hanoi(n, "a", "b", "c")
