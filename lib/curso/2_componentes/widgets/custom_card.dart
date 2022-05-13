import 'package:examples/curso/2_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  String? status;

  bool isResolved = false;

  Map<String, Color> colores = {
    'aceptado': Colors.green,
    'cancelado': Colors.pink,
  };

  void aceptar() {
    isResolved = true;
    status = 'aceptado';
    setState(() {});
  }

  void cancelar() {
    isResolved = true;
    status = 'cancelado';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        isResolved = false;
        setState(() {});
      },
      child: Card(
        color: isResolved ? colores[status] : null,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                leading: const FlutterLogo(
                  size: 50,
                ),
                title: Text(
                  widget.title,
                  style: TextStyle(color: AppTheme.primary),
                ),
                subtitle: Text(widget.subtitle),
              ),
              if (!isResolved) ...[
                Divider(thickness: 0.5, color: AppTheme.primary),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: aceptar,
                      child: const Text('aceptar'),
                    ),
                    const SizedBox(width: 10),
                    TextButton(
                      onPressed: cancelar,
                      child: const Text('Cancelar'),
                    ),
                  ],
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
