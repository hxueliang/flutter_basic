import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Map<String, dynamic>> _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getChannelData();
  }

  void _getChannelData() async {
    DioUtil _dioUtil = DioUtil();
    Response<dynamic> result = await _dioUtil.get('channels');
    Map<String, dynamic> res = result.data as Map<String, dynamic>;
    List list = res['data']['channels'] as List;
    _list = list.cast<Map<String, dynamic>>() as List<Map<String, dynamic>>;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('渠道数据')),
            body: GridView.extent(
                maxCrossAxisExtent: 140,
                padding: EdgeInsets.all(10),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3,
                children: List<MyChild>.generate(_list.length, (index) {
                  return MyChild(
                      item: _list[index],
                      index: index,
                      onDelete: (index) {
                        _list.removeAt(index);
                        setState(() {});
                      });
                }))));
  }
}

class MyChild extends StatelessWidget {
  final Map<String, dynamic> item;
  final int index;
  final Function onDelete;
  const MyChild(
      {Key? key,
      required this.item,
      required this.index,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(item['name'] ?? '-',
            style: TextStyle(fontSize: 14, color: Colors.white)),
      ),
      Positioned(
        top: -2,
        right: -2,
        child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Color.fromRGBO(100, 100, 100, 0.5),
                borderRadius: BorderRadius.circular(10)),
            // alignment: Alignment.center,
            child: IconButton(
                alignment: Alignment.center,
                iconSize: 8,
                onPressed: () {
                  onDelete(index);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ))),
      )
    ]);
  }
}

class DioUtil {
  final Dio _dio = Dio();

  DioUtil() {
    _setOptions();
    _addInterceptors();
  }

  _setOptions() {
    _dio.options
      ..baseUrl = "https://geek.itheima.net/v1_0/"
      ..connectTimeout = Duration(seconds: 10)
      ..sendTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10);
  }

  _addInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // 在请求被发送之前做一些事情
      // options.headers['xx'] = 'xx';
      handler.next(options); //continue
    }, onResponse: (response, handler) {
      // 在返回响应数据之前做一些事情
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        handler.next(response); //continue
        return;
      }
      handler.reject(DioException(requestOptions: response.requestOptions));
    }, onError: (DioError e, handler) {
      // 当请求失败时做一些事情
      handler.reject(e); //continue
    }));
  }

  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? parame}) {
    return _dio.get(url, queryParameters: parame);
  }
}
