void main(List<String> args) {
  // 1. if else
  var flag = true;
  if (flag) {
    print("true");
  } else {
    print("false");
  }

  // 2. switch case
  var a = 1;
  switch (a) {
    case 1:
      print("1");
      break;
    case 2:
      print("2");
      break;
    default:
      print("default");
  }

  // 3. 三元运算符
  var b = 1;
  var result = b == 1 ? "一" : "二";
  print(result);

  // 4. ??=  如果变量为空，则赋值
  var c;
  c ??= '小明';
  print(c);
}
