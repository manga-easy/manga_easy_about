import 'package:flutter/material.dart';

enum TeamRoleEnum {
  dev(text: 'Dev', icon: Icons.abc, color: Color.fromARGB(255, 218, 184, 13)),
  design(text: 'Design', icon: Icons.abc, color: Color(0xffa2e2cf)),
  redactor(text: 'Redator', icon: Icons.abc, color: Color(0xff33c08b)),
  support(text: 'Suporte', icon: Icons.abc, color: Color(0xff2dff5d)),
  manager(text: 'Gerente', icon: Icons.abc, color: Color(0xffba003e));

  final String text;
  final IconData icon;
  final Color color;

  const TeamRoleEnum({required this.text, required this.icon, required this.color});
}
