import 'package:coffee_cup/coffe_cup.dart';
import 'package:coffee_cup/features/container/styles/description_style.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/controller/about_controller.dart';

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
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ct.info.length,
              itemBuilder: (context, idx) {
                final info = ct.info[idx];
                return CoffeeContainer(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.fromLTRB(16, 22, 16, 16),
                  sizeWidth: MediaQuery.of(context).size.width - 32,
                  descriptionStyle: DescriptionStyle(
                    textCard: info.textDescription,
                    borderRadiusCard: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    align: Alignment.topLeft,
                  ),
                  child: CoffeeText(
                    text: info.textInformation,
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
