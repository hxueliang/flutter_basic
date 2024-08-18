/**
 * 总结：
 * 1. 明确声明(类型 变量名 = 变量值)
 * 2. 类型推导(var dynamic final const)
 * 3. final 和 const 的区别
 * 4. final 可以被赋值一次，赋值后不能被修改，但是可以在运行时确定值
 * 5. const 常量必须在编译时就确定值，不能被修改
 */
void main(List<String> args) {
  // 1. 明确声明(类型 变量名 = 变量值)
  String name = "张三";
  int age = 18;
  double height = 1.88;
  bool isStudent = true;

  // 2. 类型推导(var dynamic final const)
  // 2.1 var
  var num = 1;
  // num = 'a'; // error: A value of type 'String' can't be assigned to a variable of type 'int'.
  num = 2;

  // 2.2 dynamic
  dynamic num2 = 1;
  num2 = 'a'; // ok

  // 2.3 final
  final num3 = 1;
  // num3 = 2; // error: A value of type 'int' can't be assigned to a variable of type 'int'.

  // 2.4 const
  const num4 = 1;
  // num4 = 2; // error: A value of type 'int' can't be assigned to a variable of type 'int'.

  // 3. final 和 const 的区别
  // 3.1 final 可以被赋值一次，赋值后不能被修改，但是可以在运行时确定值
  final p1 = Preson('hxl');
  final p2 = Preson('hxl');
  print(identical(p1, p2)); // false

  // 3.2 const 常量必须在编译时就确定值，不能被修改
  const p3 = Preson2('hxl');
  const p4 = Preson2('hxl');
  print(identical(p3, p4)); // true
}

class Preson {
  String name = '';

  Preson(String name) {
    this.name = name;
  }
}

class Preson2 {
  final String name;
  const Preson2(this.name);
}
