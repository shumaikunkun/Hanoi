fun main(args: Array<String>) {
    for (input in args) {
        hanoi(input.toInt(),"a","b","c")
    }
}

fun hanoi(n:Int,x:String,y:String,z:String){
    if(n>1) hanoi(n-1,x,z,y)
    println("$x=>$y")
    if(n>1) hanoi(n-1,z,y,x)
}	
