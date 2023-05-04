import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final double? width;
  const CardWidget({
    super.key,
    required this.child,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(7),
          topRight: Radius.circular(7),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        border: Border.all(
          width: 1.5,
          color: ThemeService.of.selectColor,
        ),
      ),
      child: Column(
        children: [
          child,
          const Spacer(),
          Container(
            height: 1.5,
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width - 5,
            margin: const EdgeInsets.only(bottom: 6),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: ThemeService.of.selectColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
