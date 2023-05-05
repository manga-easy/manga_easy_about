import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/moleculs/card_description_name_widget.dart';

class MoreInformation extends StatelessWidget {
  final AboutController ct;
  const MoreInformation({super.key, required this.ct});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CoffeeText(
            text: 'Mais informação',
            typography: CoffeeTypography.title,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 218,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ct.moreInfo.length,
              itemBuilder: (context, idx) {
                final moreInfo = ct.moreInfo[idx];
                return CardDescriptionNameWidget(
                  textDescription: moreInfo.textDescription,
                  paddingDescription: const EdgeInsets.only(top: 17, right: 16),
                  borderRadiusDescriptionCard: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  align: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
                    child: CoffeeText(
                      text: moreInfo.textInformation,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
