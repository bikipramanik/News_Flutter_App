import 'package:flutter/material.dart';
import 'package:news_app/widget/treniding_news_card.dart';

class TrendingNews extends StatefulWidget {
  const TrendingNews({super.key});

  @override
  State<TrendingNews> createState() => _TrendingNewsState();
}

class _TrendingNewsState extends State<TrendingNews> {
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
        TrenidingNewsCard(),
      ],
    );
  }
}
