import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/atomic/card_widget.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardDescriptionNameWidget extends StatelessWidget {
  final Alignment? align;
  final Widget child;
  final double? width;
  final String textDescription;
  final Icon? iconDescription;
  final Color? colorDescription;
  final EdgeInsets? paddingDescription;

  final BorderRadius? borderRadiusDescriptionCard;
  const CardDescriptionNameWidget({
    super.key,
    this.align,
    required this.child,
    required this.textDescription,
    this.borderRadiusDescriptionCard,
    this.width,
    this.paddingDescription,
    this.colorDescription,
    this.iconDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: align ?? Alignment.topRight,
      children: [
        Padding(
          padding: paddingDescription ?? const EdgeInsets.only(top: 17),
          child: CardWidget(
            width: width,
            child: child,
          ),
        ),
        Container(
          height: 34,
          padding: const EdgeInsets.only(left: 16, right: 11),
          decoration: BoxDecoration(
            color: colorDescription ?? ThemeService.of.primaryColor,
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
                text: textDescription,
                typography: CoffeeTypography.button,
              ),
              const SizedBox(width: 5),
              iconDescription ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
