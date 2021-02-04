import 'package:flutter/material.dart';

import '../widgets/placar_widget.dart';

class PlacarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Placar(
              nomeTime: 'Time 1',
              color: Colors.indigoAccent,
            ),
            Placar(
              nomeTime: 'Time 2',
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
