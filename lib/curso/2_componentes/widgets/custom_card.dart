import 'package:examples/curso/2_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                title,
                style: TextStyle(color: AppTheme.primary),
              ),
              subtitle: Text(subtitle),
              onTap: () {
                print(title);
              },
            ),
            Divider(thickness: 0.5, color: AppTheme.primary),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('aceptar'),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
