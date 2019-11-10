function hanoi(n::Int, x, y, z::Char)
  if n>1 hanoi(n-1, x, z, y) end
  println(x, "=>", y)
  if n>1 hanoi(n-1, z, y, x) end
end

x = parse(Int, readline())
hanoi(x, 'a', 'b', 'c')
