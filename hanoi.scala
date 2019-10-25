// This is Scala code
object Main {
	def main(args: Array[String]):Unit = hanoi(readLine().toInt,"a","b","c")
	def hanoi(n:Int, x:String, y:String, z:String):Unit = {
		if(n>1) hanoi(n-1,x,z,y)
		println(s"$x=>$y")
		if(n>1) hanoi(n-1,z,y,x)
	}
}
