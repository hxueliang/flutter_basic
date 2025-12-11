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
  // 类型推导方式虽然没有明确声明类型，但变量是有自己明确的类型

  // 2.1 var声明变量
  var num = 1;
  // num = 'a'; // error: A value of type 'String' can't be assigned to a variable of type 'int'.
  num = 2;

  // 2.2 dynamic声明变量，相当于TS的any类型
  dynamic num2 = 1;
  num2 = 'a'; // ok

  // 2.3 final声明常量
  final num3 = 1;
  // num3 = 2; // error: A value of type 'int' can't be assigned to a variable of type 'int'.

  // 2.4 const声明常量
  const num4 = 1;
  // num4 = 2; // error: A value of type 'int' can't be assigned to a variable of type 'int'.

  // 3. final 和 const 的区别
  // 3.0 对比
  final date1 = DateTime.now();
  // const date2 = DateTime.now(); // error: Constant variables must be initialized with a constant value.

  // 3.1 final 可以被赋值一次，赋值后不能被修改，但是可以在运行时确定值
  final p1 = Preson('hxl');
  final p2 = Preson('hxl');
  print(identical(p1, p2)); // false identical()判断两个对象是否是同一个对象
  // 例如：文章发布时间
  final d2 = DateTime.now();
  // d2 = DateTime.now(); // error: The final variable 'd2' can only be set once.

  // 3.2 const 常量必须在编译时就确定值，不能被修改
  const p3 = Preson2('hxl'); // 可以赋值常量或常量表达式，此处赋值为常量构造函数
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
