enum Categories {
  business,
  sports,
  entertainment,
  science,
  health,
  technology,
  politics,
  weather,
}

class CategoryDetails {
  CategoryDetails({
    required this.categoryName,
    required this.categoryImagePath,
  });
  final String categoryName;
  final String categoryImagePath;
}

final List<CategoryDetails> categoryList = [
  CategoryDetails(
    categoryName: Categories.business.name,
    categoryImagePath: "lib/assets/business_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.sports.name,
    categoryImagePath: "lib/assets/sports_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.entertainment.name,
    categoryImagePath: "lib/assets/entertainment_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.science.name,
    categoryImagePath: "lib/assets/science_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.health.name,
    categoryImagePath: "lib/assets/health_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.technology.name,
    categoryImagePath: "lib/assets/technology_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.politics.name,
    categoryImagePath: "lib/assets/politics_category.jpg",
  ),
  CategoryDetails(
    categoryName: Categories.weather.name,
    categoryImagePath: "lib/assets/weather_category.jpg",
  ),
];
