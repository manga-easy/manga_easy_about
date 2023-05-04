import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/atomic/card_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardDescriptionNameWidget extends StatelessWidget {
  final Alignment? align;
  final Widget child;
  final double? width;
  final String textDescriptionCard;
  final EdgeInsets? paddingDescription;

  final BorderRadius? borderRadiusDescriptionCard;
  const CardDescriptionNameWidget(
      {super.key,
      this.align,
      required this.child,
      required this.textDescriptionCard,
      this.borderRadiusDescriptionCard,
      this.width,
      this.paddingDescription});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: align ?? Alignment.topRight,
      children: [
        Padding(
          padding: paddingDescription ?? const EdgeInsets.only(top: 15),
          child: CardWidget(
            width: width,
            child: child,
          ),
        ),
        Container(
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: ThemeService.of.primaryColor,
            borderRadius: borderRadiusDescriptionCard ??
                const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoffeeText(
                text: textDescriptionCard,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
