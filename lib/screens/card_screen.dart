import 'package:flutter/material.dart';

import 'package:components_flutter_app/widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: "https://statics.vrutal.com/m/216c/216c1f209de5c9516ca912cb445c905b_thumb_fb.jpg"), 
           SizedBox(height: 20),
          CustomCardType2(name: "Hola Mundo de los Videojuegos", imageUrl: "https://www.copmadrid.org/wp/wp-content/uploads/2021/07/ConceptArt_TSTOM.png"),
           SizedBox(height: 20),
          CustomCardType2(name: "Es un paisaje de un videojuego", imageUrl: "https://static.theclinic.cl/media/2013/08/paisaje-game.jpg"),
           SizedBox(height: 50),

        ],
      )


    );
  }
}



