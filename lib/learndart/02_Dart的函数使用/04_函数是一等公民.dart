void main(List<String> args) {
  test1((a, b) {
    return a + b;
  });
  test1((a, b) {
    return a - b;
  });
  test2((a, b) {
    return a + b;
  });
  test2((a, b) {
    return a - b;
  });
  test3((a, b) {
    return a + b;
  });
  test3((a, b) {
    return a - b;
  });

  var demo1 = demo();
  print(demo1(20, 20));
}

// 带参数的函数也可以作为参数传递

// 直接传递函数（不推荐）
void test1(Function foo) {
  var result = foo(20, 10);
  print(result);
}

// 等价写法（不推荐）
void test2(int foo(int a, int b)) {
  var result = foo(20, 10);
  print(result);
}

// 等价写法（推荐）
typedef Calculate = int Function(int a, int b);
void test3(Calculate foo) {
  var result = foo(20, 10);
  print(result);
}

// 返回值为函数
Calculate demo() {
  return (a, b) {
    return a * b;
  };
}
