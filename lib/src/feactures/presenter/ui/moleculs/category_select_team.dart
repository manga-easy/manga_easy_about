import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/domain/entities/team_role_enum.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';

class CategorySelectTeam extends StatefulWidget {
  final AboutController ct;
  const CategorySelectTeam({super.key, required this.ct});

  @override
  State<CategorySelectTeam> createState() => _CategorySelectTeamState();
}

class _CategorySelectTeamState extends State<CategorySelectTeam> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: TeamRoleEnum.values.length,
        itemBuilder: (context, index) {
          final team = TeamRoleEnum.values[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.ct.selectTeam(team.text);
              });
            },
            child: widget.ct.categoryTeam.contains(team.text)
                ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: team.color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CoffeeText(
                          text: team.text,
                          color: Colors.white,
                          typography: CoffeeTypography.button,
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          team.icon,
                          size: 18,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1.5,
                        color: team.color,
                      ),
                    ),
                    child: Row(
                      children: [
                        CoffeeText(
                          text: team.text,
                          typography: CoffeeTypography.button,
                          color: team.color,
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          team.icon,
                          size: 18,
                          color: team.color,
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
