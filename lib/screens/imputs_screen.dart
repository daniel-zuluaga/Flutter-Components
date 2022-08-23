
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs and Forms"),  
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                 autofocus: false,
                 initialValue: "  ",
                 textCapitalization: TextCapitalization.words,
                 autocorrect: true,
                 onChanged: (value) {
                  print("value:$value");
                 },
                 validator: (value) {
                   if(value == null) return "Este campo es requerido";
                   return value.length < 12 ? "Minimo de 12 letras" : null;
                 },
                 autovalidateMode: AutovalidateMode.onUserInteraction,
                 decoration: const InputDecoration(
                  hintText: "Nombre de usuario",
                  labelText: "Nombre",
                  helperText: "Solo letras",
                  // prefixIcon: Icon(Icons.verified_user_outlined),
                  suffixIcon: Icon(Icons.groups_outlined),
                  icon: Icon(Icons.assignment_ind_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightGreen
                    )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                  )
                 ),

              )
            ],
          ), 
        ),
      )
    );
  }
}
