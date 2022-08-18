
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {

  final options = const["Garfield", "Tom and Jerry", "Capitan America", "Mujer Maravilla", "Aquaman"];
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview 2 Type"),
        elevation: 3,
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView.separated(
      itemCount: options.length,
      itemBuilder: (context, index) => ListTile( title: Text(options[index]), 
        leading: const Icon(Icons.castle_rounded, 
          color: Colors.lightGreen),
        trailing: const Icon(Icons.arrow_forward_ios_outlined, 
          color: Colors.lightGreen),
        onTap: (() {
          final name = options[index];
          print(name);
        }),

        ),
      separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}


