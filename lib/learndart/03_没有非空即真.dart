/**
 * 总结：
 * 1. Dart中，没有非空即真的概念
 * 2. Dart中，没有非0即真的概念
 */
void main(List<String> args) {
  var b = true;
  if (b) {
    print('b is true');
  }

  // var c = 'abc';
  // if (c) { // 这里会报错，因为c不是非空即真的
  //   print('c is true');
  // }
}
