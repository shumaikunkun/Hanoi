class Hanoi {

	static void hanoi(int n, String x, String y, String z){
		if(n>1) hanoi(n-1,x,z,y)
		println(x+"=>"+y)
		if(n>1) hanoi(n-1,z,y,x)
	}


    static void main(String[] args) {
    	Scanner scan = new Scanner(System.in)
    	int n = scan.nextInt()
		hanoi(n,"a","b","c")
    }
}
