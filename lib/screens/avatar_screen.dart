

import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Garfield"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 10, 161, 15),
              //backgroundImage: NetworkImage("https://sm.ign.com/ign_es/news/c/chris-prat/chris-pratt-garfield-movie-has-a-release-date_asvb.jpg"),
              child: Text("GF"),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage("https://sm.ign.com/ign_es/news/c/chris-prat/chris-pratt-garfield-movie-has-a-release-date_asvb.jpg"),
        ),
      ),
    );
  }
}
