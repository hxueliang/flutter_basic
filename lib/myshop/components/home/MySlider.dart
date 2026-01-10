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
  CarouselSliderController _carouselController = CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getBanner(), _getSearch(), _getDots()]);
  }

  Widget _getBanner() {
    final double _screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
        carouselController: _carouselController,
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
            onPageChanged: (index, reason) {
              _currentIndex = index;
              setState(() {});
            },
            autoPlay: true,
            height: 300,
            viewportFraction: 1.0,
            autoPlayInterval: Duration(seconds: 5)));
  }

  Widget _getSearch() {
    return Positioned(
        top: 10,
        left: 10,
        right: 10,
        child: Container(
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "搜索...",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ));
  }

  Widget _getDots() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.bannerList.length, (index) {
              return GestureDetector(
                onTap: () {
                  _carouselController.animateToPage(index);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: _currentIndex == index ? 40 : 20,
                  height: 6,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(255, 255, 255, 0.1)),
                      color: _currentIndex == index
                          ? Colors.white
                          : const Color.fromRGBO(0, 0, 0, 0.3),
                      borderRadius: BorderRadius.circular(3)),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                ),
              );
            }),
          )),
    );
  }
}
