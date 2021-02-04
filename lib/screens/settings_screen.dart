import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Developed by:\n\n Gabriel Souza \n Mechanical Engineering Student \n https://github.com/gsouza97 \n Version 1.0.0  \n 2021',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
