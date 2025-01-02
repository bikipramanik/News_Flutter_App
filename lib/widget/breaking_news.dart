import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widget/carouselslider_breakingnews.dart';

class Breakingnews extends StatefulWidget {
  const Breakingnews({super.key});

  @override
  State<Breakingnews> createState() => _BreakingnewsState();
}

class _BreakingnewsState extends State<Breakingnews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "  Breaking News!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                enableFeedback: true,
              ),
              child: Text(
                "view all >",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.indigoAccent, fontSize: 12),
              ),
            ),
          ],
        ),
        CarouselsliderBreakingnews(),
        // CarouselSlider(
        //   items: image,
        //   options: CarouselOptions(
        //     autoPlay: true,
        //   ),
        // )
      ],
    );
  }
}
