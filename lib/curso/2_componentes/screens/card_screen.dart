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
            CustomCard(
              title: 'Dolore fugiat 1',
              subtitle:
                  'Proident labore ex nisi dolor non et sint pariatur ipsum irure aliquip. Sunt aute ullamco fugiat dolore excepteur et qui officia. Nulla reprehenderit adipisicing adipisicing mollit Lorem consequat ullamco cupidatat ipsum enim Lorem dolore exercitation eu. Veniam excepteur sunt aute nulla aliqua aute proident officia irure excepteur..',
            ),
            CustomCard(
              title: 'Dolore fugiat 2',
              subtitle:
                  'Proident labore ex nisi dolor non et sint pariatur ipsum irure aliquip. Sunt aute ullamco fugiat dolore excepteur et qui officia. Nulla reprehenderit adipisicing adipisicing mollit Lorem consequat ullamco cupidatat ipsum enim Lorem dolore exercitation eu. Veniam excepteur sunt aute nulla aliqua aute proident officia irure excepteur..',
            ),
            CustomCard(
              title: 'Dolore fugiat',
              subtitle:
                  'Proident labore ex nisi dolor non et sint pariatur ipsum irure aliquip. Sunt aute ullamco fugiat dolore excepteur et qui officia. Nulla reprehenderit adipisicing adipisicing mollit Lorem consequat ullamco cupidatat ipsum enim Lorem dolore exercitation eu. Veniam excepteur sunt aute nulla aliqua aute proident officia irure excepteur..',
            ),
            CustomCard(
              title: 'Dolore fugiat',
              subtitle:
                  'Proident labore ex nisi dolor non et sint pariatur ipsum irure aliquip. Sunt aute ullamco fugiat dolore excepteur et qui officia. Nulla reprehenderit adipisicing adipisicing mollit Lorem consequat ullamco cupidatat ipsum enim Lorem dolore exercitation eu. Veniam excepteur sunt aute nulla aliqua aute proident officia irure excepteur..',
            ),
            CustomCard(
              title: 'Dolore fugiat',
              subtitle:
                  'Proident labore ex nisi dolor non et sint pariatur ipsum irure aliquip. Sunt aute ullamco fugiat dolore excepteur et qui officia. Nulla reprehenderit adipisicing adipisicing mollit Lorem consequat ullamco cupidatat ipsum enim Lorem dolore exercitation eu. Veniam excepteur sunt aute nulla aliqua aute proident officia irure excepteur..',
            ),
          ],
        ),
      ),
    );
  }
}
