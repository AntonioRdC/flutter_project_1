import 'package:aluga_filme/views/detail_hollow.dart';
import 'package:aluga_filme/views/detail_master.dart';
import 'package:aluga_filme/views/home_game.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    routes: {
      '/': (_) => const HomeGame(),
      '/hollow': (_) => const DetailHollow(),
      '/MasterDuel': (_) => const DetailMasterDuel()
    },
  ));
}