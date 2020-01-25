function hanoi (n, x, y, z)
  if n > 1 then hanoi(n - 1, x, z, y) end
  print(x .. "=>" .. y)
  if n > 1 then hanoi(n - 1, z, y, x) end
end

hanoi(tonumber(io.read()), "a", "b", "c")
