import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/domain/entities/team_role_enum.dart';

class TeamEntity {
  final String name;
  final IconData icon;
  final Color color;
  final String role;
  final String image;

  TeamEntity({
    required this.name,
    required this.icon,
    required this.color,
    required this.role,
    required this.image,
  });
}
