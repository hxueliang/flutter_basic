import 'package:flutter_basic/myshop/constants/index.dart';
import 'package:flutter_basic/myshop/models/home.dart';
import 'package:flutter_basic/myshop/utils/DioRequest.dart';

// 获取轮播图列表
Future<List<BannerItem>> getBannerListApi() async {
  return ((await dioRequest.get(HttpConstants.BANNER_LIST)) as List)
      .map((item) {
    return BannerItem.fromJson(item as Map<String, dynamic>);
  }).toList();
}

// 获取分类列表
Future<List<CategoryItem>> getCategoryListApi() async {
  return ((await dioRequest.get(HttpConstants.CATEGORY_LIST)) as List)
      .map((item) {
    return CategoryItem.fromJson(item as Map<String, dynamic>);
  }).toList();
}

// 获取热门推荐列表
Future<HotRecommendResult> getHotRecommendApi() async {
  return HotRecommendResult.fromJson(
      await dioRequest.get(HttpConstants.HOT_PREFERENCE));
}

// 获取热门榜单列表
Future<HotRecommendResult> getHotInVogueApi() async {
  return HotRecommendResult.fromJson(
      await dioRequest.get(HttpConstants.HOT_INVOUGE));
}

// 获取热门一站式列表
Future<HotRecommendResult> getHotOneStopApi() async {
  return HotRecommendResult.fromJson(
      await dioRequest.get(HttpConstants.HOT_ONE_STOP));
}
