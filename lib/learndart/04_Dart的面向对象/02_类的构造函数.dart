void main(List<String> args) {
  var p = Person('张三', 20);
}

class Person {
  // 属性
  String name = "";
  int age = 0;

  // 构造函数
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 构造函数的简写
  Person(this.name, this.age);
}
