import java.util.Scanner;
public class hanoi {
  static void hanoi(int n,char x,char y,char z){
    if(n>1) hanoi(n-1,x,z,y);
    System.out.printf("%c=>%c\n",x,y);
    if(n>1) hanoi(n-1,z,y,x);
  }
  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    int n = scan.nextInt();
    hanoi(n,'a','b','c');
  }
}
