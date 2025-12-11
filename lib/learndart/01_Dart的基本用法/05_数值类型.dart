void main(List<String> args) {
  // int类型（整数类型）
  int a = 10;
  // a = 10.5; // 编译错误，int类型不能赋值为double类型
  print(a);

  // num类型（数值类型，建议变量可整可数小数时使用）
  num d = 1;
  print(d);
  d = 2.5;
  print(d);

  // double类型（浮点类型，建议变量为小数使用）
  double b = 10.5;
  print(b);
  b = 10; // 正确，double类型可以赋值为int类型
  print(b);

  // 运算符 + - * / %
  var c = a + b;
  print(c);
}
