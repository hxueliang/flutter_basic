void main() {
  // 1. 声明可能为空的变量
  String? name = null;

  // 2. 安全调用
  print(name?.length); // 如果name为空，则返回null，否则返回name的长度

  // 3. 空值默认值
  print(name ?? "张三"); // 如果name为空，则返回"张三"，否则返回name的值

  // 4. 空值断言
  print(name!.length); // 如果name为空，则抛出异常，否则返回name的长度
}
