import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/models/home.dart';

class MyHot extends StatefulWidget {
  final HotRecommendResult result;
  final String type;
  MyHot({Key? key, required this.result, required this.type}) : super(key: key);

  @override
  _MyHotState createState() => _MyHotState();
}

class _MyHotState extends State<MyHot> {
  List<GoodsItem> get _items {
    if (widget.result.subTypes.isEmpty) {
      return [];
    }
    return widget.result.subTypes.first.goodsItems.items.take(2).toList();
  }

  Widget _builderHeader() {
    return Row(
      children: [
        Text(
          widget.type == 'inVogue' ? '热门榜单' : '热门一站式',
          style: const TextStyle(
              color: Color.fromARGB(255, 149, 90, 90),
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          widget.type == 'inVogue' ? '精选攻略1' : '热门一站式1',
          style:
              TextStyle(color: Color.fromARGB(255, 130, 83, 83), fontSize: 12),
        ),
      ],
    );
  }

  Widget _builderRight() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(_items.length, (index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: const Color.fromRGBO(0, 0, 0, 0.2),
                  child: Image.network(_items[index].picture,
                      width: 80, height: 120, fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                    return Container(
                        width: 80,
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
                  '￥${_items[index].price}',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: widget.type == 'inVogue'
                ? Color.fromARGB(255, 255, 240, 240)
                : Color.fromARGB(255, 240, 248, 255)),
        child: Column(
          children: [
            _builderHeader(),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _builderRight()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
