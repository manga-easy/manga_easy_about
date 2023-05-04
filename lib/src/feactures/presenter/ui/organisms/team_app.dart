import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/moleculs/card_description_name_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class TeamApp extends StatelessWidget {
  final AboutController ct;
  const TeamApp({super.key, required this.ct});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const CoffeeText(
            text: 'Nossa equipe',
            typography: CoffeeTypography.title,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              true
                  ? Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: ThemeService.of.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: ThemeService.of.backgroundIcon,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CoffeeText(
                            text: 'Dev',
                            color: ThemeService.of.primaryText,
                          ),
                          const SizedBox(width: 5),
                          Icon(
                            Icons.person,
                            size: 14,
                            color: ThemeService.of.primaryText,
                          ),
                        ],
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: ThemeService.of.backgroundIcon,
                        ),
                      ),
                      child: const CoffeeText(
                        text: 'Descenvolvedor',
                        typography: CoffeeTypography.body,
                      ),
                    ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: ct.team.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, idx) {
                var team = ct.team[idx];
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 190,
                      child: CardDescriptionNameWidget(
                        width: 150,
                        textDescriptionCard: team.role.name,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                              team.image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    CoffeeText(
                      text: team.name,
                      typography: CoffeeTypography.title,
                    ),
                    CoffeeText(text: team.tagDiscord)
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
