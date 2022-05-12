import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
                title: Text('Item ${index + 1}'),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
          itemCount: 20),
    );
  }
}
