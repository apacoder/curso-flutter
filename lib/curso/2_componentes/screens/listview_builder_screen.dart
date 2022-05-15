import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            height: 400,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/ios.gif'),
            image: NetworkImage(
                'https://picsum.photos/1000/600?image=${index + 1}'),
          );
        },
      ),
    );
  }
}
