import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey <FormState> myFormKey = GlobalKey <FormState> ();

    final Map <String, String> formValues = {
      'first_name' : 'Juan',
      'last_name'  : 'Mora',
      'email'       : 'juanpablomora777@gmail.com',
      'password'    : '123456',
      'role'        : 'Admin'
    };


    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            
            child: Column(
              children: [
          
                CustomInputField( hintText: 'Nombre del usuario', labelText: 'Nombre', formProperty: 'first_name', formValues: formValues ),
                const SizedBox(height: 30),
          
                CustomInputField( hintText: 'Apellido del usuario', labelText: 'Apellido', formProperty: 'last_name', formValues: formValues ),
                const SizedBox(height: 30),
          
                CustomInputField( hintText: 'Correo del usuario', labelText: 'Correo', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues ),
                const SizedBox(height: 30),
          
                CustomInputField( hintText: 'Contraseña del usuario', labelText: 'Contraseña', obscureText: true, formProperty: 'password', formValues: formValues ),
                const SizedBox(height: 30),


                DropdownButtonFormField <String> (
                  
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ], 
                  onChanged: ( value ){
                    print( value );
                    formValues['role'] = value ?? 'Admin';
                  }
                ),


                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center (child: Text('Guardar'))
                  ),
                  onPressed: (){

                    FocusScope.of(context).requestFocus( FocusNode() );

                    if ( !myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }


                     //* imprimir valores del formulario
                    print(formValues);
                  } 
                ) 
              ],
            ),
          ),
        ),
        )
    );
  }
}

