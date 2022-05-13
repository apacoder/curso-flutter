import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        children: const [
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Este es el titulo 1'),
                subtitle: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged',
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('Este es el titulo 2'),
                subtitle: Text(
                  'Aliquip adipisicing exercitation labore do cupidatat eiusmod tempor eiusmod. Pariatur duis voluptate anim deserunt aute dolor nostrud ipsum adipisicing non cupidatat in deserunt. Et sit commodo ipsum aliquip esse nisi ea.',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
