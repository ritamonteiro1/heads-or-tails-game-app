import 'package:flutter/material.dart';

class ResultView extends StatefulWidget {
  final String value;

  ResultView(this.value);

  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  void _back() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var image = 'assets/images/logo.png';
    if (widget.value == 'heads') {
      image = 'assets/images/heads_coin.png';
    } else {
      image = 'assets/images/tails_coin.png';
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(image),
            GestureDetector(
              onTap: _back,
              child: Image.asset('assets/images/button_back.png'),
            ),
          ],
        ),
      ),
    );
  }
}
