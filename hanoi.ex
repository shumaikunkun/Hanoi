defmodule Hanoi do
  def hanoi(n,x,y,z) do
    if n>0, do: hanoi(n-1,x,z,y)
    IO.puts "#{x}=>#{y}"
    if n>0, do: hanoi(n-1,x,z,y)
  end
end

Hanoi.hanoi(String.to_integer(IO.gets ""),"a","b","c")
