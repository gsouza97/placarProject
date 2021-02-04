import 'package:flutter/material.dart';

import '../utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FlatButton(
            textColor: Theme.of(context).accentColor,
            child: Text(
              'Iniciar',
              style: TextStyle(fontSize: 40),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.PLACAR,
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.settings),
          onPressed: () {
            Navigator.of(context).pushNamed(
              AppRoutes.SETTINGS,
            );
          },
        ),
      ),
    );
  }
}
