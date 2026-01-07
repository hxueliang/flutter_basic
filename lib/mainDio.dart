import 'package:dio/dio.dart';

void main(List<String> args) {
  getList();
}

Function getList = () async {
  try {
    var res = await Dio().get('https://geek.itheima.net/v1_0/channels');
    print(res.data);
    return res.data;
  } catch (e) {
    print(e);
  }
};
