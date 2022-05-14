import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeGame extends StatefulWidget {
  const HomeGame({Key? key}) : super(key: key);

  @override
  State<HomeGame> createState() => _HomeGameState();
}

class _HomeGameState extends State<HomeGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alugar Jogos'),
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Escolha um jogo para alugar e entre em contato com o '
                    'proprietario pelo whatsapp'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Hollow Knight'),
                SizedBox(
                  height: 300,
                  child: Image.network('https://cdn.akamai.steamstatic.com/steam/apps/367520/capsule_616x353.jpg?t=1625363925'),
                ),
                Text('Forje seu caminho em Hollow Knight! Uma aventura de ação épica em um vasto reino arruinado de insetos e heróis.'),
                ElevatedButton.icon(onPressed: () {
                  Navigator.pushNamed(context, '/hollow');
                }, icon: Icon(Icons.add), label: Text('Detalhes'))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Yu-Gi-oh Master Duel'),
                SizedBox(
                  height: 300,
                  child: Image.network('https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_YuGiOhMasterDuel_image1600w.jpg'),
                ),
                Text('A edição definitiva do card game competitivo que está em processo de evolução há mais de 20 anos! Duele no mais alto nível contra Duelistas de todo o mundo.'),
                ElevatedButton.icon(onPressed: () {
                  Navigator.pushNamed(context, '/MasterDuel');
                }, icon: Icon(Icons.add), label: Text('Detalhes'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
