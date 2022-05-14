import 'package:examples/curso/2_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              CustomInputField(labelText: 'Nombre', prefixIxon: Icons.person),
              Divider(),
              CustomInputField(labelText: 'Email', prefixIxon: Icons.email),
              Divider(),
              CustomInputField(labelText: 'Dirección', prefixIxon: Icons.home),
            ],
          ),
        ),
      ),
    );
  }
}
