import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Tarjetas'),
      // ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          children: const [
            CustomCard2(imgUrl: 'https://picsum.photos/id/25/800'),
            CustomCard2(imgUrl: 'https://picsum.photos/id/289/800'),
            CustomCard2(imgUrl: 'https://picsum.photos/id/290/800'),
            // CustomCard1(
            //   title: 'Cámara leica',
            //   subtitle:
            //       'Las cámaras Leica tan chidas, sin nada más que agregar.',
            // ),
          ],
        ),
      ),
    );
  }
}
