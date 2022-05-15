import 'dart:convert';

import 'package:examples/curso/2_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String?> formValues = {
      'first_name': null,
      'last_name': null,
      'email': null,
      'password': null,
      'role': 'admin',
    };

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 0,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 15),
                  //
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 15),
                  //
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    formProperty: 'email',
                    formValues: formValues,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 15),
                  //
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    formProperty: 'password',
                    formValues: formValues,
                    obscureText: true,
                  ),
                  const SizedBox(height: 15),
                  //
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'logo',
                        child: Text('El logo bonito'),
                      ),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'admin';
                      print('hola');
                    },
                  ),
                  //
                  const SizedBox(height: 15),
                  //
                  ElevatedButton(
                    child: const SizedBox(
                      child: Center(child: Text('Guardar')),
                      width: double.infinity,
                    ),
                    onPressed: () {
                      //Quitar teclado
                      //Solo agregar linea cuando se sabe que se va a salir de la pantalla para quitar el teclado
                      // FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario incorrecto');
                        return;
                      }

                      pretyPrint(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void pretyPrint(var object) {
  final prettyString = const JsonEncoder.withIndent('  ').convert(object);
  print(prettyString);
}
