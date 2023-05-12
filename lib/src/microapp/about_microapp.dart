import 'package:flutter/material.dart';
import 'package:manga_easy_about/manga_easy_about.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class AboutMicroApp extends MicroApp {
  @override
  Map<String, Widget> routers = {
    AboutPage.route: const AboutPage(),
  };

  @override
  void registerDependencies() {}
}
