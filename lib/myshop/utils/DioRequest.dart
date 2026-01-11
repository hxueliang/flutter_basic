import 'package:dio/dio.dart';
import 'package:flutter_basic/myshop/constants/index.dart';

class DioRequest {
  final Dio _dio = Dio();

  DioRequest() {
    _setOptions();
    _addInterceport();
  }

  Future<dynamic> get(String url, {Map<String, dynamic>? parame}) {
    return _handleResponse(_dio.get(url, queryParameters: parame));
  }

  _setOptions() {
    _dio.options
      ..baseUrl = GlobalConstants.BASE_URL
      ..connectTimeout = const Duration(seconds: GlobalConstants.TIME_OUT)
      ..receiveTimeout = const Duration(seconds: GlobalConstants.TIME_OUT)
      ..sendTimeout = const Duration(seconds: GlobalConstants.TIME_OUT);
  }

  _addInterceport() {
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      handler.next(options);
    }, onResponse: (response, handler) {
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        handler.next(response);
        return;
      }
      handler.reject(DioException(requestOptions: response.requestOptions));
    }, onError: (error, handler) {
      handler.reject(error);
    }));
  }

  /// 对请求结果进行进一步处理后返回
  Future<dynamic> _handleResponse(Future<Response<dynamic>> task) async {
    try {
      final response = await task;
      final data = response.data as Map<String, dynamic>;
      if (data['code'] == GlobalConstants.SUCCESS_CODE) {
        return data['result'];
      }
      throw Exception(data['msg'] ?? '加载数据异常');
    } catch (e) {
      throw Exception(e);
    }
  }
}

final dioRequest = DioRequest();
