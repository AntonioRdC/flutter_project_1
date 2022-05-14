import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailMasterDuel extends StatefulWidget {
  const DetailMasterDuel({Key? key}) : super(key: key);

  @override
  State<DetailMasterDuel> createState() => _DetailMasterDuelState();
}

class _DetailMasterDuelState extends State<DetailMasterDuel> {

    final Uri _url = Uri.parse('http://wa.me/+5569981312317');

    void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
    }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('Yu-Gi-oh Master Duel'),
    backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 300,
              child: Image.network('https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_YuGiOhMasterDuel_image1600w.jpg'),
            ),
            Text('O jogo parece ser bem simples, charmoso, bonito, e entre muitos outros elogios, mas o que se destaca é a história FANTÁSTICA. A história se trata sobre um reino perdido(hallowest) e você(o cavaleiro) que após sentir um chamado vindo desse reino, viaja por ele descobrindo os mistérios que envolvem desde quem você é e até o motivo da decadência desse vasto império que era governado pelo . Com o passar da gameplay você cria novos amigos, conhece novos inimigos, e verdades são reveladas. junto com o game vem 3 dlcs, que trazem um "plus" pro jogo, aumentando a história e deixando ela mais rica. Você que decide o que acontece, desde matar alguém, ou deixar ela viva, ou aceitar uma missão que no futuro pode mudar até mesmo o final do jogo . A gameplay é desafiadora, é necessário ter habilidade nos dedos e nas mãos, é simplesmente uma mistura de jogabilidade de Mario e Dark Souls, e a história dos Assasins Creed.'),
            ElevatedButton.icon(onPressed: _launchUrl, icon: Icon(Icons.add), label: Text('WhatsApp'))
          ],
        ),
      ),
    );
  }
}
