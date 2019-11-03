// This is Pike code
void hanoi(int n, string x, string y, string z){
	if(n>1) hanoi(n-1,x,z,y);
	write("%s=>%s\n",x,y);
	if(n>1) hanoi(n-1,z,y,z);
}

int main(){ hanoi((int)Stdio.stdin.gets(),"a","b","c"); }
