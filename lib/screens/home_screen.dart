// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toonflix/models/webToon.dart';
import 'package:toonflix/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  Future<List<WebToonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's toons",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Text("there is data");
          }
          return const Text("Loading......");
        },
      ),
    );
  }
}
