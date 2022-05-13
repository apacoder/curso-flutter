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
              trailing: const Icon(
                Icons.arrow_right,
                size: 30,
              ),
              subtitle: Text(subtitle),
              onTap: () {},
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('aceptar')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
