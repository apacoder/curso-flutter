import 'package:examples/curso/2_componentes/theme/app_theme.dart';
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
            children: [
              TextFormField(
                // autofocus: true,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  if (value == 'puta') return 'dont be malcriado';
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'Escribe tu nombre',
                  icon: Icon(Icons.person, color: AppTheme.primary),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
