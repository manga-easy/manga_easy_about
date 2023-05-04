import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/moleculs/card_description_name_widget.dart';

class AboutApp extends StatelessWidget {
  final AboutController ct;
  const AboutApp({super.key, required this.ct});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CoffeeText(
            text: 'Sobre o aplicativo',
            typography: CoffeeTypography.title,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 215,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ct.info.length,
              itemBuilder: (context, idx) {
                final info = ct.info[idx];
                return CardDescriptionNameWidget(
                  textDescriptionCard: info.textDescription,
                  paddingDescription: const EdgeInsets.only(top: 15, right: 16),
                  borderRadiusDescriptionCard: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  align: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
                    child: CoffeeText(
                      text: info.textInformation,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
