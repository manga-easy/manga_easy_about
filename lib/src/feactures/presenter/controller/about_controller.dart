import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/domain/entities/information_entity.dart';
import 'package:manga_easy_about/src/feactures/domain/entities/team_entity.dart';
import 'package:manga_easy_about/src/feactures/domain/entities/team_role_enum.dart';

class AboutController extends ChangeNotifier {
  List<String> categoryTeam = [];

  void selectTeam(String nameTeam) {
    categoryTeam.contains(nameTeam)
        ? categoryTeam.remove(nameTeam)
        : categoryTeam.add(nameTeam);
    notifyListeners();
  }

  List<InformationEntity> info = [
    InformationEntity(
      textInformation:
          'O Criador do Mangá Easy, após muito procurar, não encontrou nenhum aplicativo de leitura de mangá que atendesse seus desejos. Então, começou a criar do zero uma plataforma para leitura de mangás, inicialmente  sua finalidade era apenas para uso privado. O esforço acarretou no desejo de compartilhá-lo, o que fez com que ele o publicasse na Play Store.',
      textDescription: 'A criação do projeto',
    ),
    InformationEntity(
      textInformation:
          'A Equipe do Mangá Easy conta com apenas um programador, o próprio desenvolvedor, o criador. A Equipe é não assalariada, voluntários, leitores que se prontificaram a ajudar na colaboração da criação do aplicativo, Manga Easy. Queremos que os leitores usufruam da melhor experiência. O aplicativo está se desenvolvendo sem pretensão de lucros extras, apenas o suficiente para manter a plataforma on-line.',
      textDescription: 'O Desenvolvimento do projeto',
    ),
    InformationEntity(
      textInformation:
          "O Mangá Easy não se responsabiliza por mangás com erros de página, ele somente é um agrupador de host's, não lançamos mangás, pois não somos uma Scan. Por Enquanto, estamos em BETA, ao instalar o aplicativo o leitor deve-se estar ciente de que poderão haver alguns bugs, por isso temos no próprio aplicativo, uma parte para “Melhorias”, onde você pode enviar sugestões.",
      textDescription: 'O Aplicativo',
    ),
  ];

  List<InformationEntity> moreInfo = [
    InformationEntity(
      textInformation:
          'Para ser um pré-beta tester, você deve entrar em nossa comunidade no discord, onde haverá uma aba de geral e você poderá pedir no #beta interno para participar!, A diferença de versão e que você irá procurar erros dentro do aplicativo nas correções que acabam de ser adicionadas, antes de serem lançadas novas versões na Play Store. Além disso, nossa comunidade no Discord conta com ótimas recomendações feitas pela equipe, e um chat para os membros do Mangá Easy, jogos, e concursos.',
      textDescription: 'BETA tester e Comunidade',
    ),
    InformationEntity(
      textInformation:
          'As propagandas foram colocadas para poder manter o aplicativo, como já citado, não visamos lucro. Ademais, as propagandas em forma de pop-up, aparecem em um período de a cada 1 hora, enquanto você lê. Para poder remover os ADS, é preciso comprar o emblema de doador, que conta com benefícios exclusivos, por apenas uma única compra de 4,99 você fica permanentemente livre dos pop-ups! Ganha benefícios no perfil, e um emblema de cobre.',
      textDescription: 'Os Anúncios',
    ),
  ];

  List<TeamEntity> team = [
    TeamEntity(
      name: 'CledsonV',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104417596465500171/R.png?width=344&height=251',
    ),
    TeamEntity(
      name: 'Lucas CM',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104200454054883459/iu.png?width=375&height=449',
    ),
    TeamEntity(
      name: 'Skynoshaine',
      color: TeamRoleEnum.manager.color,
      icon: TeamRoleEnum.manager.icon,
      role: TeamRoleEnum.manager.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104201206898888705/6bff9d15f454afd6dfffbabc0697cdd5.jpg?width=647&height=647',
    ),
    TeamEntity(
      name: 'Darkzy',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104202403412189214/04b242dcf03273f5cd835d2cbb8164f7.jpg?width=656&height=650',
    ),
    TeamEntity(
      name: 'Koro',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104200150529884190/20210626090221_2d701.jpeg?width=359&height=359',
    ),
    TeamEntity(
      name: 'Luiz Henrique',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104205804850131034/images_-_2022-02-17T223950.637.jpeg?width=665&height=373',
    ),
    TeamEntity(
      name: 'Pato',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104203845162258564/afdb2947aca8e0d6171807d096a186d8.jpg?width=633&height=650',
    ),
    TeamEntity(
      name: 'Theus',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/1104198872449953844/1104200718832910356/IMG_20230505_211847.jpg?width=584&height=584',
    ),
    TeamEntity(
      name: 'Thiago',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Anyca',
      color: TeamRoleEnum.design.color,
      icon: TeamRoleEnum.design.icon,
      role: TeamRoleEnum.design.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104201597376004136/d2fd3e37fd0c4ffba11214faade6d5a8.jpg?width=485&height=526',
    ),
    TeamEntity(
      name: 'Elizabeth',
      color: TeamRoleEnum.design.color,
      icon: TeamRoleEnum.design.icon,
      role: TeamRoleEnum.design.text,
      image:
          'https://media.discordapp.net/attachments/1008262446651297852/1104204488098721912/Bluewing_Comics_style_Young_woman_reading_a_manga_in_a_library__c9d63825-c41a-43c6-bf6c-0a391c2aa181.png?width=400&height=584',
    ),
    TeamEntity(
      name: 'Nietz',
      color: TeamRoleEnum.design.color,
      icon: TeamRoleEnum.design.icon,
      role: TeamRoleEnum.design.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104196412620681277/image.png?width=463&height=468',
    ),
    TeamEntity(
      name: 'Gahbi',
      color: TeamRoleEnum.redactor.color,
      icon: TeamRoleEnum.redactor.icon,
      role: TeamRoleEnum.redactor.text,
      image:
          'https://media.discordapp.net/attachments/1104184728535449631/1104208597325451286/baixados.jpg?width=460&height=460',
    ),
  ];
}
