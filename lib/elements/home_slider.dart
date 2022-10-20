import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/elements/colors.dart';

class CarouselHomeDemo extends StatefulWidget {
  const CarouselHomeDemo({Key? key}) : super(key: key);

  @override
  _CarouselHomeDemoState createState() => _CarouselHomeDemoState();
}

class _CarouselHomeDemoState extends State<CarouselHomeDemo> {
  int current = 0;
  final CarouselController _controller = CarouselController();
  final List imgList = [
    "assets/images/img-1160.png",
    "assets/images/img-1163.jpg",
    "assets/images/img-1167.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          items: imgList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  height: 167,
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(i),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Constants.lightGreyColor().withOpacity(.9),
                        BlendMode.modulate,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: current == entry.key ? 22.0 : 8,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            borderRadius: current == entry.key
                                ? BorderRadius.circular(10)
                                : BorderRadius.circular(50),
                            // shape: current == entry.key
                            //     ? BoxShape.rectangle
                            //     : BoxShape.circle,
                            color: Constants.greyColor(),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            );
          }).toList(),
          carouselController: _controller,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            },
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            height: 167,
            viewportFraction: 1,
            // aspectRatio: 16 / 8,
            enableInfiniteScroll: true,
            reverse: false,
            initialPage: 0,
          ),
        ),
      ],
    );
  }
}

class HomeList extends StatelessWidget {
  HomeList({Key? key}) : super(key: key);
  final List imgList = [
    "assets/images/bakery.jpg",
    "assets/images/fresh.jpg",
    "assets/images/bakery.jpg",
    "assets/images/fresh.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          spacing: 10,
          direction: Axis.horizontal,
          children: imgList.map((item) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.33,
              child: Stack(
                children: [
                  Card(
                    elevation: 3,
                    margin: const EdgeInsets.all(0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.4,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        //  borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(item),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Shop Name",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                height: 0.7,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: Colors.black,
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: 12,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.035,
                    right: MediaQuery.of(context).size.width * 0.02,
                    child: Container(
                      color: Constants.lightGreyColor(),
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      child: const Icon(
                        Icons.favorite_border,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
