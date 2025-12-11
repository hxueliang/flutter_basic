void main(List<String> args) {
  // int类型（整数类型）
  int i = 1;
  // i = 1.5; // 编译错误，int类型不能赋值为double类型
  print('i: $i');

  // num类型（数值类型，建议变量可整可数小数时使用）
  num n = 2;
  print('n: $n');
  n = 2.5;
  print('n: $n');

  // double类型（浮点类型，建议变量为小数使用）
  double d = 3.5;
  print('d: $d');
  // d = 3; // 正确，double类型可以赋值为int类型
  // print('d: $d');

  // 运算符 + - * / %
  var c = i + d;
  print('c: $c');

  // 类型转换

  // int、double互转
  // d = i; // 错误，double类型不能直接赋值为int类型
  d = i.toDouble();
  print('i->d: $d');
  // i = d; // 错误，int类型不能直接赋值为double类型
  i = d.toInt();
  print('d->i: $i');

  // num、int互转
  // i = n; // 错误，int类型不能直接赋值为num类型
  i = n.toInt();
  print('i->n: $n');
  n = i;
  print('n->i: $i');

  // num、double互转
  // d = n; // 错误，double类型不能直接赋值为num类型
  d = n.toDouble();
  print('n->d: $d');
  n = d;
  print('d->n: $n');
}
