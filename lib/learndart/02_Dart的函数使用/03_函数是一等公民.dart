void main(List<String> args) {
  test(bar);

  // 匿名函数
  test(() {
    print("匿名函数被调用了");
  });

  // 箭头函数，条件是函数体只有一行代码
  test(() => print("箭头函数被调用了"));
}

void test(Function foo) {
  foo();
}

void bar() {
  print("bar被调用了");
}
