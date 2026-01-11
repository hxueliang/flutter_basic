import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/models/home.dart';

class MySuggestion extends StatefulWidget {
  final HotRecommendResult hotRecommendResult;
  MySuggestion({Key? key, required this.hotRecommendResult}) : super(key: key);

  @override
  _MySuggestionState createState() => _MySuggestionState();
}

class _MySuggestionState extends State<MySuggestion> {
  Widget _builderHeader() {
    return const Row(
      children: [
        Text(
          '特惠推荐',
          style: TextStyle(
              color: Color.fromARGB(255, 149, 90, 90),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '精选攻略',
          style:
              TextStyle(color: Color.fromARGB(255, 130, 83, 83), fontSize: 12),
        ),
      ],
    );
  }

  Widget _builderLeft() {
    return Container(
        width: 100,
        height: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          // color: Colors.amber,
          image: DecorationImage(
              image: AssetImage('lib/myshop/assets/hot_left.png'),
              fit: BoxFit.cover),
        ));
  }

  Widget _builderRight() {
    List<GoodsItem> _list = _getDisplayGoods();
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(_list.length, (index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: const Color.fromRGBO(0, 0, 0, 0.2),
                  child: Image.network(_list[index].picture,
                      width: 100, height: 120, fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                    return Container(
                        width: 100,
                        height: 120,
                        alignment: Alignment.center,
                        child: Text('图片加载失败'));
                  }),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: const BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text(
                  '￥${_list[index].price}',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          );
        }));
  }

  List<GoodsItem> _getDisplayGoods() {
    if (widget.hotRecommendResult.subTypes.isEmpty) {
      return [];
    }
    return widget.hotRecommendResult.subTypes.first.goodsItems.items
        .take(3)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
              image: AssetImage(
                'lib/myshop/assets/bg_hot.png',
              ),
              fit: BoxFit.cover,
            )),
        child: Column(
          children: [
            _builderHeader(),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _builderLeft(),
                const SizedBox(width: 10),
                Expanded(child: _builderRight()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
