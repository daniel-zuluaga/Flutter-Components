import 'package:flutter/material.dart';

import 'package:components_flutter_app/screens/screens.dart';
import 'package:components_flutter_app/models/models.dart';


class AppRoutes{

  static const initialRoute = "home";


  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    // MenuOption(route: "home", name: "Home Screen", screen: const HomeScreen(), icon: Icons.home_rounded),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt ),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list ),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined ),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card ),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_rounded ),
    MenuOption(route: 'Animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.animation_outlined ),
    MenuOption(route: 'Inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext) > appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context ) => const HomeScreen() });
    
    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : ( BuildContext context ) => option.screen });
    }

    return appRoutes; 
  }

/*
  static Map<String, Widget Function(BuildContext)> routes = {
    
    "home":(context) => const HomeScreen(),
    "listview1": ((context) => const Listview1Screen()),
    "listview2": ((context) => const Listview2Screen()),
    "Alert": ((context) => const AlertScreen()),
    "Card": ((context) => const CardScreen()),
  };
  */

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: ((context) => const Listview1Screen())
    );
  }
}



