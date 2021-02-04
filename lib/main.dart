import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './utils/app_routes.dart';
import './screens/home_screen.dart';
import './screens/placar_screen.dart';
import './screens/settings_screen.dart';
import './screens/vencedor_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Volleyball',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
        fontFamily: 'RobotoCondensed',
        canvasColor: Colors.white12,
      ),
      routes: {
        AppRoutes.HOME: (ctx) => HomeScreen(),
        AppRoutes.PLACAR: (ctx) => PlacarScreen(),
        AppRoutes.VENCEDOR: (ctx) => VencedorScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
