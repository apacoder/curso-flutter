import 'package:examples/curso/2_componentes/router/app_routes.dart';
import 'package:examples/curso/2_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = AppRoute.menuOption;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(
            options[i].icon,
            color: AppTheme.primary,
          ),
          title: Text(options[i].name),
          onTap: () {
            Navigator.pushNamed(context, options[i].route);
          },
        ),
        itemCount: options.length,
      ),
    );
  }
}
