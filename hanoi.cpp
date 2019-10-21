#include <iostream>

void hanoi(int n,char x,char y,char z){
  if(n>1) hanoi(n-1,x,z,y);
  std::cout<<x<<"=>"<<y<<std::endl;
  if(n>1) hanoi(n-1,z,y,x);
}

int main(){
  int n;
  std::cin>>n;
  hanoi(n,'a','b','c');
  return 0;
}
