import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/theme_services.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Mode"),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              ThemeServices().switchTheme();
            },
            icon: Icon(
              Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight,
              color: Colors.white,
              size: 24,
            ),
          )
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
