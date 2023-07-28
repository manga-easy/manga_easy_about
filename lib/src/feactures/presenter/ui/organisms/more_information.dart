import 'package:coffee_cup/coffe_cup.dart';
import 'package:coffee_cup/features/container/styles/description_style.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';

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
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ct.moreInfo.length,
              itemBuilder: (context, idx) {
                final moreInfo = ct.moreInfo[idx];
                return CoffeeContainer(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.fromLTRB(16, 22, 16, 16),
                  sizeWidth: MediaQuery.of(context).size.width - 32,
                  descriptionStyle: DescriptionStyle(
                    textCard: moreInfo.textDescription,
                    borderRadiusCard: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    align: Alignment.topLeft,
                  ),
                  child: CoffeeText(
                    text: moreInfo.textInformation,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
