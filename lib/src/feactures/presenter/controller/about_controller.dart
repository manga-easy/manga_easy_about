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
      name: 'Lucas',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Cledson',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Bruno',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Baltros',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Ricardao',
      color: TeamRoleEnum.dev.color,
      icon: TeamRoleEnum.dev.icon,
      role: TeamRoleEnum.dev.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Elizabeth',
      color: TeamRoleEnum.manager.color,
      icon: TeamRoleEnum.manager.icon,
      role: TeamRoleEnum.manager.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Sky',
      color: TeamRoleEnum.manager.color,
      icon: TeamRoleEnum.manager.icon,
      role: TeamRoleEnum.manager.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Luiz',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Koro',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Darkzy',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Theus',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Pato',
      color: TeamRoleEnum.support.color,
      icon: TeamRoleEnum.support.icon,
      role: TeamRoleEnum.support.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
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
      name: 'Nietz',
      color: TeamRoleEnum.design.color,
      icon: TeamRoleEnum.design.icon,
      role: TeamRoleEnum.design.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Anyca',
      color: TeamRoleEnum.design.color,
      icon: TeamRoleEnum.design.icon,
      role: TeamRoleEnum.design.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
    TeamEntity(
      name: 'Gabiru',
      color: TeamRoleEnum.redactor.color,
      icon: TeamRoleEnum.redactor.icon,
      role: TeamRoleEnum.redactor.text,
      image:
          'https://media.discordapp.net/attachments/882615192431771668/1078880185170006056/5d138386cb0ff237d0f65cd6a9905ab4.jpg?width=576&height=650',
    ),
  ];
}
