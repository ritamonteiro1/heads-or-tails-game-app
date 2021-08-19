import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_or_tails_game_app/views/result_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  void _play(){
    var items = ['heads', 'tails'];
    var number = Random().nextInt(items.length);
    var result = items[number];
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultView(result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/logo.png'),
              GestureDetector(
                onTap: _play,
                child: Image.asset('assets/images/button_play.png'),
              ),
            ], ),
      ),
    );
  }
}
