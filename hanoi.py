def hanoi(n,x,y,z):
  if n>1: hanoi(n-1,x,z,y)
  print("%s=>%s" %(x,y))
  if n>1: hanoi(n-1,z,y,x)

hanoi(int(input()),"a","b","c")
