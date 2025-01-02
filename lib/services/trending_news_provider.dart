import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/models/news_model.dart';

class TrendingNewsNotifier extends StateNotifier<List<NewsModel>> {
  TrendingNewsNotifier() : super(<NewsModel>[]);

  Future<void> getTrendingNews() async {
    try {
      final url = Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&sortBy=trendingNews&apiKey=0e4e4410dde04aa9a04a789c8e90e116");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)["data"];
        final news = (data as List).map((e) => NewsModel.fromJson(e)).toList();
        state = news;
      } else {}
    } catch (e) {}
  }
}
