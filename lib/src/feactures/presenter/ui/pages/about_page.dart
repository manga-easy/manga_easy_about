import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/organisms/about_app.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class AboutPage extends StatelessWidget {
  static const route = '/about';
  const AboutPage({super.key});

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
            centerTitle: true,
            title: const CoffeeText(
              text: 'SOBRE',
              typography: CoffeeTypography.title,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const CoffeeText(
                  text: 'CRIADOR',
                  typography: CoffeeTypography.title,
                ),
                const SizedBox(height: 10),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650'),
                ),
                const SizedBox(height: 5),
                const CoffeeText(
                  text: 'Lucas CM',
                  typography: CoffeeTypography.title,
                ),
                 const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 2,
                      color: ThemeService.of.primaryColor,
                    ),
                  ),
                  child: CoffeeText(
                    text: 'Descenvolvedor e admin',
                    color: ThemeService.of.primaryColor,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: AboutApp(),
          ),
        ],
      ),
    );
  }
}
