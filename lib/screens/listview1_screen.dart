
import 'package:flutter/material.dart';
import 'package:components_flutter_app/theme/app_theme.dart';


class Listview1Screen extends StatelessWidget {

  final options = const["Garfield", "Tom and Jerry", "Capitan America", "Mujer Maravilla", "Aquaman"];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview 1 Type"),
      ),
      body: ListView(
        children: <Widget>[

          ...options.map(
            (name) => ListTile(
            leading: const Icon(Icons.castle_rounded, color: AppTheme.primary ),
            title: Text(name),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
            )
          ).toList(),

        ],
      ),
    );
  }
}


