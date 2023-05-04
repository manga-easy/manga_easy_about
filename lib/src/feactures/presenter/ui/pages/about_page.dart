import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/organisms/about_app.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/organisms/team_app.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class AboutPage extends StatefulWidget {
  static const route = '/about';
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final AboutController ct = AboutController();
  @override
  void initState() {
    ct.info;
    ct.team;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              color: ThemeService.of.backgroundIcon,
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
          SliverToBoxAdapter(
            child: AboutApp(ct: ct),
          ),
           SliverToBoxAdapter(
            child: TeamApp(ct: ct),
          )
        ],
      ),
    );
  }
}
