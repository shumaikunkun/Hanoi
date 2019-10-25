def hanoi(n : Int32, x : String, y : String, z : String)
  hanoi(n - 1, x, z, y) if n > 1
  print("#{x}=>#{y}\n")
  hanoi(n - 1, z, y, x) if n > 1
end

input = gets

unless input.nil?
    unless input.empty?
        hanoi(input.to_i, "a", "b", "c")
    end
end
