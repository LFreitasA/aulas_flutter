import 'dart:math';

void main() {
  int a = 2;
  int b = -8;
  int c = 8;
  var delta = pow(b, 2) - (4 * a * c);
  var raizDelta = sqrt(delta);

  var x1 = (-b + (raizDelta)) / (2 * a);
  var x2 = (-b - (raizDelta)) / (2 * a);
  print('x1 = $x1');
  print('x2 = $x2');
}
