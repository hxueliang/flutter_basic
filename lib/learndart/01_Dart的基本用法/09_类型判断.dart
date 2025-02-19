void main(List<String> args) {
  // 使用 is 关键字判断类型
  var a = 12;
  if (a is String) {
    print('a is String');
  } else if (a is int) {
    print('a is int');
  } else {
    print('a is other');
  }
}
