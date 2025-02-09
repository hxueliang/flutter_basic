void main(List<String> args) {
  print(sum(1, 2));
}

// 函数定义
int sum(int a, int b) {
  return a + b;
}

// 省略返回类型，编译器会自动推断（开必中不推荐）
sum2(int a, int b) {
  return a + b;
}
