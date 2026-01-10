import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basic/myshop/models/home.dart';

class MySlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  MySlider({Key? key, required this.bannerList}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getBanner()]);
  }

  Widget _getBanner() {
    final double _screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
        items: List.generate(
          widget.bannerList.length,
          (index) {
            return Container(
                child: Image.network(
              widget.bannerList[index].imgUrl,
              fit: BoxFit.cover,
              width: _screenWidth,
            ));
          },
        ),
        options: CarouselOptions(
            autoPlay: true,
            height: 300,
            viewportFraction: 1.0,
            autoPlayInterval: Duration(seconds: 5)));
  }
}
