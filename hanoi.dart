import 'dart:io';

void hanoi(int n, String x, String y, String z) {
  if (n > 1) hanoi(n - 1, x, z, y);
  stdout.write('$x=>$y\n');
  if (n > 1) hanoi(n - 1, z, y, x);
}

void main() {
  String n = stdin.readLineSync();
  hanoi(int.parse(n), 'a', 'b', 'c');
}
