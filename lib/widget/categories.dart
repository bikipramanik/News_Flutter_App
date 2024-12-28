import 'package:flutter/material.dart';
import 'package:news_app/utils/categories_provider.dart';
import 'package:news_app/widget/category_cards.dart';

class CateogriesScreen extends StatefulWidget {
  const CateogriesScreen({
    super.key,
    required this.categories,
  });
  final List<Categories> categories;

  @override
  State<CateogriesScreen> createState() => _CateogriesScreenState();
}

class _CateogriesScreenState extends State<CateogriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "  Categories",
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
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                categoryName: categoryList[index].categoryName,
                imagePath: categoryList[index].categoryImagePath,
              );
            },
          ),
        )
      ],
    );
  }
}
