import 'package:flutter/material.dart';
import 'package:news_app/services/categories_provider.dart';
import 'package:news_app/widget/breaking_news.dart';
import 'package:news_app/widget/categories.dart';
import 'package:news_app/widget/trending_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              "hub",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    backgroundColor: Colors.orange,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          CateogriesListView(categories: Categories.values),
          Breakingnews(),
          TrendingNews(),
        ],
      ),
    );
  }
}
