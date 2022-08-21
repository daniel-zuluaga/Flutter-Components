import 'package:flutter/material.dart';

import 'package:components_flutter_app/router/app_routes.dart';
import 'package:components_flutter_app/theme/app_theme.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i ) => ListTile(
          leading: Icon( menuOptions[i].icon, color: AppTheme.primary ),
          title: Text( menuOptions[i].name ),
          onTap: () {

            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            // );
            // Navigator.push(context, route );

            Navigator.pushNamed(context, menuOptions[i].route );

          },
        ), 
        separatorBuilder: ( _, __ ) => const Divider(), 
        itemCount: menuOptions.length
      )
    );
  }
}
