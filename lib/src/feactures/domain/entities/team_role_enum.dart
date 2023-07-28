import 'package:flutter/material.dart';

enum TeamRoleEnum {
  dev(
    text: 'Dev',
    icon: Icons.settings,
    color: Color.fromARGB(255, 218, 184, 13),
  ),
  manager(
    text: 'Admin',
    icon: Icons.person,
    color: Color(0xffba003e),
  ),
  support(
    text: 'Suporte',
    icon: Icons.chat_rounded,
    color: Color(0xff2dff5d),
  ),
  design(
      text: 'Design',
      icon: Icons.brush,
      color: Color.fromARGB(255, 129, 181, 165)),
  redactor(
    text: 'Redator',
    icon: Icons.edit,
    color: Color(0xff33c08b),
  );

  final String text;
  final IconData icon;
  final Color color;

  const TeamRoleEnum(
      {required this.text, required this.icon, required this.color});
}
