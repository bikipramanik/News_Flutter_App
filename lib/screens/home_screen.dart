import 'package:flutter/material.dart';
import 'package:news_app/utils/categories_provider.dart';
import 'package:news_app/widget/categories.dart';

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
          CateogriesScreen(categories: Categories.values),
          Text(
            "HAHAHA",
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
