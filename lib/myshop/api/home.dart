import 'package:flutter_basic/myshop/constants/index.dart';
import 'package:flutter_basic/myshop/models/home.dart';
import 'package:flutter_basic/myshop/utils/DioRequest.dart';

// Future<List<BannerItem>>
Future<List<BannerItem>> getBannerListApi() async {
  return ((await dioRequest.get(HttpConstants.BANNER_LIST)) as List)
      .map((item) {
    return BannerItem.fromJson(item as Map<String, dynamic>);
  }).toList();
}
