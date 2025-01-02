import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/models/news_model.dart';
import 'package:http/http.dart' as http;

class BreakingNewsNotifier extends StateNotifier<List<NewsModel>> {
  BreakingNewsNotifier() : super(<NewsModel>[]);

  Future<void> getBreakingNews() async {
    try {
      final url = Uri.parse(
          "https://newsapi.org/v2/top-headlines?country=us&sortBy=breakingNews&apiKey=0e4e4410dde04aa9a04a789c8e90e116");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)["data"];
        final news =
            (data as List).map((e) => NewsModel.fromJson(e)).toList();

        state = news;
      }else{
        
      }
    } catch (e) {}
  }
}
