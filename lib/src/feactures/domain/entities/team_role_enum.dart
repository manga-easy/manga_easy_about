import 'package:flutter/material.dart';

enum TeamRoleEnum {
  dev(text: 'Dev', icon: Icons.abc),
  design(text: 'Design', icon: Icons.abc),
  support(text: 'Suporte', icon: Icons.abc),
  manager(text: 'Gerente', icon: Icons.abc);

  final String text;
  final IconData icon;

  const TeamRoleEnum({required this.text, required this.icon});
}
