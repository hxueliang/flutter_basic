void main(List<String> args) {
  // 第一种定义Maps方式 {}
  var map1 = {
    "name": "张三",
    "age": 20,
    "work": ['IT', '程序员']
  };
  print(map1);
  print(map1['name']);
  print(map1['age']);
  print(map1['work']);
  print('\n');

  // 第二种定义Maps方式 new Map()
  var map2 = new Map();
  map2['name'] = '李四';
  map2['age'] = 30;
  print(map2);
  print('\n');
}
