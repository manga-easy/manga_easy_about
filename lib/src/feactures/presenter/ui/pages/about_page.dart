import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/core/routes/external_routes.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/organisms/about_app.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/organisms/more_information.dart';
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
    ct.addListener(() {
      setState(() {});
    });
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
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
          SliverToBoxAdapter(
            child: AboutApp(ct: ct),
          ),
          SliverToBoxAdapter(
            child: TeamApp(ct: ct),
          ),
          SliverToBoxAdapter(
            child: MoreInformation(ct: ct),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ExternalRoutes.politic);
                },
                child: Row(
                  children: [
                    const CoffeeText(
                      text: 'Politicas de Privacidade',
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right_sharp,
                      size: 22,
                      color: ThemeService.of.backgroundIcon,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
