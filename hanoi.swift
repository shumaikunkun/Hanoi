func hanoi(n:Int, x:String, y:String, z:String)->Void{
  if n>1 { hanoi(n:n-1, x:x, y:z, z:y) }
  print("\(x)=>\(y)");
  if n>1 { hanoi(n:n-1, x:z, y:y, z:x) }
}

hanoi(n:Int(readLine()!)!, x:"a", y:"b", z:"c")
