fn main() {
  n := 0
  C.scanf('%d', &n)
  hanoi(n, 'a', 'b', 'c')
}

fn hanoi(n int, x string, y string, z string) {
  if n > 1 {
    hanoi(n - 1, x, z, y)
  }

  println(x + '=>' + y)

  if n > 1 {
    hanoi(n - 1, z, y, x)
  }
}
