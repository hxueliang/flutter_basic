void main(List<String> args) {
  // 第一种定义List的方式：不指定类型
  var list1 = ['张三', 19, true];
  print(list1);
  print(list1.length);
  print(list1[0]);
  print('\n');

  // 第二种定义List的方式：指定类型
  var list2 = <String>['张三', '李四', '王五'];
  var list3 = <int>[1, 2, 3];
  print(list2);
  print(list3);
  print('\n');

  // 第三种定义List的方式：增加数据（通过[]定义的List，他的容量是可变的）
  var list4 = [];
  print(list4);
  list4.add('张三');
  list4.add(20);
  list4.add(false);
  print(list4);
  print('\n');

  // 第四种定义List的方式：new List
  // var list5 = new List(); // v2.0-可用，v3.0+不可用

  // 第五种定义List的方式：创建固定长度的List -> List.filled
  var list6 = List.filled(2, '');
  print(list6);
  print(list6.length);
  // list6.length = 0; // 报错，不能修改固定长度的List的长度
  list6[0] = '张三';
  list6[1] = '李四';
  // list6.add('王五'); // 报错，不能向固定长度的List中添加元素
  print(list6);
  print('\n');

  // 通过[]定义的List，他的length是可变的
  var list7 = ['张三', '李四', '王五'];
  print(list7);
  list7.length = 0;
  print(list7);
  print('\n');

  // List.filled 指定类型
  var list8 = List<String>.filled(2, '');
  list8[0] = '张三';
  list8[1] = '李四';
  print(list8);
}
