import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class VencedorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String timeVencedor =
        ModalRoute.of(context).settings.arguments as String;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$timeVencedor Vencedor!',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    AppRoutes.HOME,
                  );
                },
                child: Text(
                  'Reiniciar',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.greenAccent[400],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
