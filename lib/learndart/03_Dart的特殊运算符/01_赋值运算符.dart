void main(List<String> args) {
  // ??= 如果变量为空，则赋值
  var name;
  name ??= "张三";
  print(name);

  var age = 18;
  age ??= 20;
  print(age);

  // ?? 如果变量为空，则返回后面的值
  var name1;
  print(name1 ?? "李四");

  var age1 = 19;
  print(age1 ?? 20);
}
