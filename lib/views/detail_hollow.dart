import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailHollow extends StatefulWidget {
  const DetailHollow({Key? key}) : super(key: key);

  @override
  State<DetailHollow> createState() => _DetailHollowState();
}

class _DetailHollowState extends State<DetailHollow> {

  final Uri _url = Uri.parse('http://wa.me/+5569981312317');

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hollow Knight'),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 300,
              child: Image.network('https://cdn.akamai.steamstatic.com/steam/apps/367520/capsule_616x353.jpg?t=1625363925'),
            ),
            Text('Agora você pode jogar o “Yu-Gi-Oh! TCG” digitalmente, em qualquer lugar. Duelos em ritmo acelerado com impressionantes gráficos HD e uma nova trilha sonora dinâmica! Prepare-se para desafiar Duelistas ao redor do mundo! ◇ Duele em Qualquer Nível! A experiência completa de Yu-Gi-Oh! está disponível para qualquer pessoa independentemente do nível de habilidade. Não se preocupe caso seja um Duelista iniciante ou não Duela há algum tempo, os tutoriais do jogo irão ensinar o básico sobre como Duelar em Yu-Gi-Oh! ESTAMPAS ILUSTRADAS. Quando terminar, você receberá um Deck para ajudá-lo a iniciar sua jornada! Colecione novos cards à medida que avança no jogo para incrementar seus Decks! ◇ Formatos de Torneio Rotativos Misture tudo e coloque suas habilidades de Duelo à prova! Uma grande variedade de eventos e torneios estarão disponíveis para os Duelistas. Construa e Duele com diferentes Decks utilizando mais de 10.000 cards exclusivos e regras especiais específicas para torneios! Escolha o torneio em que VOCÊ deseja Duelar e almeje o primeiro lugar!'),
            ElevatedButton.icon(onPressed: _launchUrl, icon: Icon(Icons.add), label: Text('WhatsApp'))
          ],
        ),
      ),
    );
  }
}