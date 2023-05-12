import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/pages/about_page.dart';
import 'package:manga_easy_routes/manga_easy_routes.dart';

class AboutMicroApp extends MicroApp {
  @override
  Map<String, Widget> routers = {
    AboutPage.route: const AboutPage(),
  };

  @override
  void registerDependencies() {}
}
