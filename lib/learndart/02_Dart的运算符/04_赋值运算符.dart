void main(List<String> args) {
  var a = 1;
  print(a);

  // ??= 如果变量为空，则赋值
  var name;
  name ??= "张三";
  print(name); // 张三

  var age = 18;
  age ??= 20;
  print(age); // 18
}
