def hanoi(n,x,y,z)
  hanoi(n-1,x,z,y) if n>1
  print("#{x}=>#{y}\n")
  hanoi(n-1,z,y,x) if n>1
end

hanoi(gets.chomp.to_i,"a","b","c")
