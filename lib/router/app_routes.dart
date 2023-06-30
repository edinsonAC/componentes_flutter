import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    //todo
    MenuOption(
        route: 'home',
        nombre: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        nombre: 'list view 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt_sharp),
    MenuOption(
        route: 'listview2',
        nombre: 'list view 2',
        screen: const ListView2Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'alert',
        nombre: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: 'card',
        nombre: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
