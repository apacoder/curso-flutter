import 'package:examples/curso/2_widgets/widgets.dart';
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
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i].name),
          trailing: Icon(options[i].icon),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView1Screen(),
            // );
            // Navigator.push(context, route);
            Navigator.pushNamed(context, options[i].route);
          },
        ),
        itemCount: options.length,
      ),
    );
  }
}
