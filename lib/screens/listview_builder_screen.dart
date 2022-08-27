import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
   
  const ListviewBuilderScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            placeholder: const AssetImage("assets/jar-loading.gif"), 
            image: NetworkImage("https://picsum.photos/500/300?${index + 1}")
          );
        },
      ),
    );
  }
}

