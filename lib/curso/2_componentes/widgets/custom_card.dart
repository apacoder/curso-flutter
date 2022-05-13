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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: const FlutterLogo(
            size: 50,
          ),
          title: Text(
            title,
            style: TextStyle(color: AppTheme.primary),
          ),
          subtitle: Text(subtitle),
        ),
      ),
    );
  }
}
