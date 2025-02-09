void main(List<String> args) {
  // 级联运算符
  // ..  级联运算符
  // 可以对同一个对象进行多个操作
  var p = new Person('张三', 20)
    ..name = "李四"
    ..age = 23
    ..eat()
    ..run()
    ..swim();
  print(p.name);
  print(p.age);
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void eat() {
    print("eat...");
  }

  void run() {
    print("run...");
  }

  void swim() {
    print("swim...");
  }
}
