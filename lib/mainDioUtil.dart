import 'package:dio/dio.dart';

void main(List<String> args) {}

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

  get(String url, {Map<String, dynamic>? parame}) {
    return _dio.get(url, queryParameters: parame);
  }
}
