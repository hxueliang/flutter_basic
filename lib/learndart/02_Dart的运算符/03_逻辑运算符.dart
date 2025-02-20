void main(List<String> args) {
  // 逻辑运算符
  // && 与
  // || 或
  // ! 非

  // && 与
  // 两个条件都为true，结果才为true
  bool a = true;
  bool b = true;
  print(a && b); // true

  a = false;
  b = true;
  print(a && b); // false
  print('\n');

  // || 或
  // 两个条件有一个为true，结果就为true
  a = false;
  b = true;
  print(a || b); // true

  a = false;
  b = false;
  print(a || b); // false
  print('\n');

  // ! 非
  // 取反
  a = true;
  print(!a); // false
}
