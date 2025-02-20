void main(List<String> args) {
  // 1. String 转 数字
  String str1 = '123';
  var num1 = int.parse(str1);
  print(num1 is int); // true

  String str2 = '123.1';
  // var num2 = int.parse(str2); // 报错
  var num2 = double.parse(str2);
  print(num2 is double); // true

  print('\n');

  // 异常处理
  String price = '';
  // var num3 = double.parse(price); // 报错
  var num3;
  try {
    num3 = double.parse(price);
  } catch (e) {
    price = '0';
    num3 = double.parse(price);
  }
  print(num3); // 0.0

  // 2. 数字 转 String
  int num4 = 123;
  var str4 = num4.toString();
  print(str4 is String); // true
  print('\n');

  // 3. 其它类型和bool类型之间的转换
  // isEmpty 判断字符串是否为空
  var str5 = '';
  if (str5.isEmpty) {
    print('空');
  } else {
    print('非空');
  }

  var str6 = 123;
  if (str6 == 0) {
    print('0');
  } else {
    print('非0');
  }
  print('\n');

  var num7 = 0 / 0;
  print(num7); // NaN
  if (num7.isNaN) {
    print('是NaN');
  }
}
