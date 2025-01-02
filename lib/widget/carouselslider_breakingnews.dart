import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/slider_model.dart';
import 'package:news_app/services/slider_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselsliderBreakingnews extends StatefulWidget {
  const CarouselsliderBreakingnews({super.key});

  @override
  State<CarouselsliderBreakingnews> createState() =>
      _CarouselsliderBreakingnewsState();
}

class _CarouselsliderBreakingnewsState
    extends State<CarouselsliderBreakingnews> {
  int activeIndex = 0;
  List<SliderModel> slides = [];
  @override
  void initState() {
    slides = sliderData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: slides.length,
          itemBuilder: (context, index, realIndex) {
            slides[index].image;
            return buildImage(
              slides[index].image,
              index,
              slides[index].name,
            );
          },
          options: CarouselOptions(
            height: 250,
            autoPlay: true,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 15,
        ),
        builIndicator(),
      ],
    );
  }

  Widget builIndicator() {
    return AnimatedSmoothIndicator(
      effect: SlideEffect(
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: Colors.orange,
      ),
      activeIndex: activeIndex,
      count: sliderData.length,
    );
  }

  Widget buildImage(String image, int index, String name) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: 250,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            height: 250,
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(top: 130),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Text(
              name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }
}
