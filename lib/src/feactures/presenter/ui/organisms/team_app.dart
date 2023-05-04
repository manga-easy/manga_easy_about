import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/moleculs/card_description_name_widget.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/moleculs/category_select_team.dart';
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
          CategorySelectTeam(
            categoryTeam: ct.categoryTeam,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 210,
            child: ListView.builder(
              itemCount: ct.team.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, idx) {
                var team = ct.team[idx];
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 164,
                      child: CardDescriptionNameWidget(
                        width: 120,
                        textDescription: team.role,
                        iconDescription: Icon(team.icon, size: 18),
                        colorDescription: team.color,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
                          child: CircleAvatar(
                            radius: 45,
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
                      typography: CoffeeTypography.button,
                    ),
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
