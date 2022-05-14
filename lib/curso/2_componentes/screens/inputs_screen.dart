import 'package:examples/curso/2_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Rafael',
      'last_name': 'Aparicio',
      'email': 'rafael@google.com',
      'password': '123456',
      'role': 'Admin',
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
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                  ),
                  const Divider(),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                  ),
                  const Divider(),
                  const CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const Divider(),
                  const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                  ),
                  const Divider(),
                  ElevatedButton(
                    child: const SizedBox(
                      child: Center(child: Text('Guardar')),
                      width: double.infinity,
                    ),
                    onPressed: () {
                      //Quitar teclado
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario incorrecto');
                        return;
                      }
                      print(formValues);
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
