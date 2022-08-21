import 'package:flutter/material.dart';



class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
        ),
      elevation: 10,
      child: Column(
        children: [
        const FadeInImage(
          image: NetworkImage("https://statics.vrutal.com/m/216c/216c1f209de5c9516ca912cb445c905b_thumb_fb.jpg"), 
          placeholder: AssetImage("assets/jar-loading.gif"),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 300),
        ),

        Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: const Text("Este es un hermoso paisaje de videojuegos")
        ),
      ]),
    );
  }
}