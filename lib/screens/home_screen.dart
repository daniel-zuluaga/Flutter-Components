import 'package:components_flutter_app/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components in Flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.access_time_outlined),
        title: const Text("Name of route"),
        onTap: () {
          
          //final route = MaterialPageRoute(
          //  builder: ((context) => const Listview1Screen())
          //);

          //Navigator.push(context, route);

          Navigator.pushNamed(context, "listview1");

          },
        ), 
      separatorBuilder: (_, __) =>  const Divider(), 
      itemCount: 100
      )
    );
  }
}
