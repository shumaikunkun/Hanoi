import std.c.stdio;

void hanoi(int n,char x,char y,char z){
  if(n>1) hanoi(n-1,x,z,y);
  printf("%c=>%c\n",x,y);
  if(n>1) hanoi(n-1,z,y,x);
}

int main(){
  int n;
  scanf("%d",&n);
  hanoi(n,'a','b','c');
  return 0;
}
