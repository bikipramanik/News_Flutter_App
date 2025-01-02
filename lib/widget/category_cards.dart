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
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 100,
          width: 150,
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
          child: Stack(
            children: [
              SizedBox(
                height: 100,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color.fromARGB(80, 0, 0, 0),
                ),
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
