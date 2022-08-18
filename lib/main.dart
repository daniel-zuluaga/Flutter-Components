import 'package:components_flutter_app/router/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:components_flutter_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,

      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

