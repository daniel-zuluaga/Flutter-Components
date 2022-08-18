import 'package:components_flutter_app/models/models.dart';
import 'package:flutter/material.dart';

import 'package:components_flutter_app/screens/screens.dart';


class AppRoutes{

  static const initialRoute = "home";


  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(route: "home", name: "Videogames", screen: const HomeScreen(), icon: Icons.home_rounded),
    MenuOption(route: "listview1", name: "Type Videogames 1", screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: "listview2", name: "Type Videogames 1", screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: "Alert", name: "Causes of Videogames", screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: "Card", name: "Classs of Videogames", screen: const CardScreen(), icon: Icons.credit_card),

  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    
    "home":(context) => const HomeScreen(),
    "listview1": ((context) => const Listview1Screen()),
    "listview2": ((context) => const Listview2Screen()),
    "Alert": ((context) => const AlertScreen()),
    "Card": ((context) => const CardScreen()),
  };

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: ((context) => const Listview1Screen())
    );
  }
}



