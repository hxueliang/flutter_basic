void main(List<String> args) {
  // 1. 定义字符串类型
  var str1 = 'hello world'; // 单引号
  var str2 = "hello world"; // 双引号
  var str3 = ''' // 三引号
    hello
    world
  ''';
  var str4 = """ // 三引号
    hello 
    world
  """;

  // print(str1);
  // print(str2);
  // print(str3);
  // print(str4);

  // 2. 字符串拼接
  var name = '张三';
  var age = 18;
  var height = 1.88;

  var message1 = '姓名：$name, 年龄：$age, 身高：$height';
  var message2 = '姓名：$age, 类型${age.runtimeType}'; // runtimeType 获取变量类型

  print(message1);
  print(message2);
}
