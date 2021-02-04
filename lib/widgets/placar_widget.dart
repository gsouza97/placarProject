import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class Placar extends StatefulWidget {
  final String nomeTime;
  final Color color;

  Placar({this.nomeTime, this.color});

  @override
  _PlacarState createState() => _PlacarState();
}

class _PlacarState extends State<Placar> {
  int placar = 0;

  void _aumentarPlacar() {
    setState(() {
      placar = placar + 1;
    });
    if (placar == 21) {
      Navigator.of(context).pushNamed(
        AppRoutes.VENCEDOR,
        arguments: widget.nomeTime,
      );
    }
    print(placar);
  }

  void _diminuirPlacar() {
    setState(() {
      placar = placar - 1;
      if (placar < 0) {
        return placar = 0;
      }
    });
    print(placar);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: double.infinity,
      width: mediaQuery.size.width * 0.5,
      child: Card(
        color: widget.color,
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.nomeTime,
              style: TextStyle(
                fontSize: mediaQuery.size.height * 0.12, //30
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$placar',
              style: TextStyle(
                fontSize: mediaQuery.size.height * 0.5, //100
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: mediaQuery.size.height * 0.13, //30
                  icon: Icon(
                    Icons.remove_circle_outline,
                  ),
                  onPressed: () => _diminuirPlacar(),
                ),
                IconButton(
                  iconSize: mediaQuery.size.height * 0.13,
                  icon: Icon(
                    Icons.add_circle_outline,
                  ),
                  onPressed: () => _aumentarPlacar(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
