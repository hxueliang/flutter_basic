void main(List<String> args) {
  // 第一种定义Map方式 {}
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

  // 第二种定义Map方式 new Map()
  var map2 = new Map();
  map2['name'] = '李四';
  map2['age'] = 30;
  print(map2);
  print('\n');

  // Map常用方法
  var map3 = {"name": "王五", "age": 40};

  // forEach遍历
  map3.forEach((key, value) {
    print("$key = $value");
  });
  print('\n');

  // addAll 添加所有键值对
  map3.addAll({"sex": "男", "address": "北京"});
  print(map3);
  print('\n');

  // containsKey 是否包含某个key
  print(map3.containsKey('name'));
  print(map3.containsKey('sex'));
  print(map3.containsKey('name1'));
  print('\n');

  // remove 删除某个key
  print(map3.remove('address'));
  print(map3);
  print('\n');

  // clear 清空所有键值对
  map3.clear();
  print(map3);
}
