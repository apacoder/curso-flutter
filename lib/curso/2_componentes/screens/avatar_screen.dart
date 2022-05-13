import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[800],
      appBar: AppBar(
        title: const Text('Avatar'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: const Text('RA'),
              backgroundColor: Colors.cyan[900],
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage(
            'https://alfabetajuega.com/hero/2022/05/Dragon-Ball-confirma-a-que-personaje-Goku-nunca-podra-ganarle.jpg',
          ),
        ),
      ),
    );
  }
}
