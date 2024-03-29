
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
        title: const Text("Inputs and Forms"),  
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,

            child: Column(
              children:  [
                CustomInputField(hintText: 'Nombre de usuario', labelText: 'Nombre', formProperty: "first_name", formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del usuario', formProperty: "last_name", formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress, formProperty: "email", formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true, formProperty: "password", formValues: formValues),
                const SizedBox(height: 30),
          
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: "Admin", child: Text("Admin")),
                    DropdownMenuItem(value: "Superuser", child: Text("Superuser")),
                    DropdownMenuItem(value: "Developer", child: Text("Developer")),
                    DropdownMenuItem(value: "Jr. Developer", child: Text("Jr. Developer")),
                    DropdownMenuItem(value: "Profesional", child: Text("Profesional")),
                  ], 
                  onChanged: (value) {
                    formValues["role"] = value ?? "Admin";
                    }
                ),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text("Guardar")
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode() );
                    if(!myFormKey.currentState!.validate()){
                      print("Formulario no valido");
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

