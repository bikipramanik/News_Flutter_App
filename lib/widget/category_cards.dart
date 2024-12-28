import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.imagePath,
  });
  final String categoryName;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 120,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple,
              spreadRadius: 1,
              blurRadius: 14,
              blurStyle: BlurStyle.outer,
              offset: Offset(4, 4),
            ),
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
              blurStyle: BlurStyle.solid,
              offset: Offset(-1, -1),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              SizedBox(
                height: 120,
                width: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(80, 0, 0, 0),
                ),
                height: 120,
                width: 170,
                child: Text(
                  categoryName.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
