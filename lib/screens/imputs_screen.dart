
import 'package:components_flutter_app/widgets/widgets.dart';
import 'package:flutter/material.dart';



class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "first_name": "Daniel",
      "last_name" : "Zuluaga",
      "email"     : "daniel.zuluaga007@gamil.com",
      "password"  : "hdsjhbashjdbshb",
      "role"      : "Admin",
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs and Forms"),  
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,

            child: Column(
              children:  [
                const CustomInputField(hintText: 'Nombre de usuario', labelText: 'Nombre'),
                const SizedBox(height: 30),
                const CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario'),
                const SizedBox(height: 30),
                const CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress),
                const SizedBox(height: 30),
                const CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true),
                const SizedBox(height: 30),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Guardar")
                    ),
                  ),
                  onPressed: () {
                    if(!myFormKey.currentState!.validate()){
                      return;
                    }
                    
                    //Todo: imprimir valores del formulario 
                    print(formValues);
          
                  }, 
                )
          
              ],
            ),
          ), 
        ),
      )
    );
  }
}

