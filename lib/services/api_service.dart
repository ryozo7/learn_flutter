import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webToon.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev/";
  final String today = "today";

  Future<List<WebToonModel>> getTodaysToons() async {
    List<WebToonModel> webToonInstances = [];
    final url = Uri.parse("$baseUrl$today");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webToons = jsonDecode(response.body);
      for (var webToon in webToons) {
        webToonInstances.add(WebToonModel.fromJson(webToon));
      }
      return webToonInstances;
    }
    throw Error();
  }
}
