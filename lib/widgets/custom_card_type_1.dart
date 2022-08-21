import 'package:flutter/material.dart';

import 'package:components_flutter_app/theme/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text("Los videojugeos"),
            subtitle: Text("Excepteur aliquip do eiusmod proident. Nostrud adipisicing consectetur do ea veniam Lorem ad veniam. Non officia et nulla exercitation non reprehenderit do eu fugiat. Dolor laborum sint velit excepteur minim officia excepteur voluptate enim."),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton( 
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),

                 TextButton( 
                  onPressed: () {},
                  child: const Text("Ok")
                ),
              ],
            ),
          )

      ]),
    );
  }
}