import 'package:manga_easy_about/src/feactures/domain/entities/team_role_enum.dart';

class TeamEntity {
  final String name;
  final String tagDiscord;
  final TeamRoleEnum role;
  final String image;

  TeamEntity({
    required this.name,
    required this.tagDiscord,
    required this.role,
    required this.image,
  });
}
