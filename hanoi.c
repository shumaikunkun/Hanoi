using System;
public class Hanoi {
  private void hanoi(int n,char x,char y,char z){
    if(n>1) hanoi(n-1,x,z,y);
    Console.WriteLine("{0}=>{1}",x,y);
    if(n>1) hanoi(n-1,z,y,x);
  }
  public static void Main() {
    int n = int.Parse(Console.ReadLine());
    Hanoi h = new Hanoi();
    h.hanoi(n,'a','b','c');
  }
}
