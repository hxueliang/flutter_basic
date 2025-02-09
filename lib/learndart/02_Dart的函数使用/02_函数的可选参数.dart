import 'dart:ffi';

void main(List<String> args) {
  sayHello('张三');
  sayHello2('李四', 18, 1.88);
  sayHello3(
    '王五',
    height: 1.73, // 没有顺序
    age: 19, // 没有顺序
  );
}

// 1. 必选参数
void sayHello(String name) {
  print(name);
}

// 2. 可选参数 - 位置可选参数
void sayHello2(String name, [int age = 0, double height = 0.0]) {
  print(name + ' ' + age.toString() + ' ' + height.toString());
}

// 3. 可选参数 - 命名可选参数
void sayHello3(String name, {int age = 0, double height = 0.0}) {
  print(name + ' ' + age.toString() + ' ' + height.toString());
}
