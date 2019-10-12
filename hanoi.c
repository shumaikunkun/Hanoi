#include <stdio.h>

void hanoi(int n,char x,char y,char z){
  if(n>1) hanoi(n-1,x,z,y);
  printf("%c=>%C\n",x,y);
  if(n>1) hanoi(n-1,z,y,x);
}

int main(void){
  int n;
  scanf("%d",&n);
  hanoi(n,'a','b','c');
  return 0;
}
