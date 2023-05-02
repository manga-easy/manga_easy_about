import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_about/src/feactures/presenter/ui/moleculs/card_description_name_widget.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardDescriptionNameWidget(
          textDescriptionCard: 'A criação do projeto',
          widthDescriptionCard: 150,
          borderRadiusDescriptionCard: const BorderRadius.only(
              bottomLeft: Radius.circular(0),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          align: Alignment.topLeft,
          height: 190,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
            child: Column(
              children: const [
                CoffeeText(
                  text:
                      'O Criador do Mangá Easy, após muito procurar, não encontrou nenhum aplicativo de leitura de mangá que atendesse seus desejos. Então, começou a criar do zero uma plataforma para leitura de mangás, inicialmente  sua finalidade era apenas para uso privado. O esforço acarretou no desejo de compartilhá-lo, o que fez com que ele o publicasse na Play Store.',
                )
              ],
            ),
          ),
        ),
        CardDescriptionNameWidget(
          textDescriptionCard: 'O Desenvolvimento do projeto',
          widthDescriptionCard: 190,
          align: Alignment.topLeft,
          height: 190,
          borderRadiusDescriptionCard: const BorderRadius.only(
            bottomLeft: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
            child: Column(
              children: const [
                CoffeeText(
                  text:
                      'A Equipe do Mangá Easy conta com apenas um programador, o próprio desenvolvedor, o criador. A Equipe é não assalariada, voluntários, leitores que se prontificaram a ajudar na colaboração da criação do aplicativo, Manga Easy. Queremos que os leitores usufruam da melhor experiência. O aplicativo está se desenvolvendo sem pretensão de lucros extras, apenas o suficiente para manter a plataforma on-line.',
                ),
              ],
            ),
          ),
        ),
        CardDescriptionNameWidget(
          textDescriptionCard: 'Os Anúncios',
          widthDescriptionCard: 110,
          align: Alignment.topLeft,
          borderRadiusDescriptionCard: const BorderRadius.only(
            bottomLeft: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          height: 205,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
            child: Column(
              children: const [
                CoffeeText(
                  text:
                      'As propagandas foram colocadas para poder manter o aplicativo, como já citado, não visamos lucro. Ademais, as propagandas em forma de pop-up, aparecem em um período de a cada 1 hora, enquanto você lê. Para poder remover os ADS, é preciso comprar o emblema de doador, que conta com benefícios exclusivos, por apenas uma única compra de 4,99 você fica permanentemente livre dos pop-ups! Ganha benefícios no perfil, e um emblema de cobre.',
                ),
              ],
            ),
          ),
        ),
        CardDescriptionNameWidget(
          textDescriptionCard: 'O Aplicativo',
          widthDescriptionCard: 125,
          align: Alignment.topLeft,
          height: 190,
          borderRadiusDescriptionCard: const BorderRadius.only(
            bottomLeft: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
            child: Column(
              children: const [
                CoffeeText(
                  text:
                      "O Mangá Easy não se responsabiliza por mangás com erros de página, ele somente é um agrupador de host's, não lançamos mangás, pois não somos uma Scan. Por Enquanto, estamos em BETA, ao instalar o aplicativo o leitor deve-se estar ciente de que poderão haver alguns bugs, por isso temos no próprio aplicativo, uma parte para “Melhorias”, onde você pode enviar sugestões.",
                ),
              ],
            ),
          ),
        ),
        CardDescriptionNameWidget(
          textDescriptionCard: 'BETA tester e Comunidade',
          widthDescriptionCard: 190,
          align: Alignment.topLeft,
          height: 220,
          borderRadiusDescriptionCard: const BorderRadius.only(
            bottomLeft: Radius.circular(0),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 25, 16, 20),
            child: Column(
              children: const [
                CoffeeText(
                  text:
                      'Para ser um pré-beta tester, você deve entrar em nossa comunidade no discord, onde haverá uma aba de geral e você poderá pedir no #beta interno para participar!, A diferença de versão e que você irá procurar erros dentro do aplicativo nas correções que acabam de ser adicionadas, antes de serem lançadas novas versões na Play Store. Além disso, nossa comunidade no Discord conta com ótimas recomendações feitas pela equipe, e um chat para os membros do Mangá Easy, jogos, e concursos.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
