void main(List<String> args) {
  // int类型
  int a = 10;
  // a = 10.5; // 编译错误，int类型不能赋值为double类型
  print(a);

  // double类型
  double b = 10.5;
  // b = 10; // 正确，double类型可以赋值为int类型
  print(b);

  // 运算符 + - * / %
  var c = a + b;
  print(c);
}
