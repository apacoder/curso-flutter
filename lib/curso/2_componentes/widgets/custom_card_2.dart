import 'package:examples/curso/2_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  CustomCard2({Key? key}) : super(key: key);

  String img = 'https://picsum.photos/800';
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shadowColor: AppTheme.primary.withOpacity(1),
      child: Column(
        children: [
          //
          FadeInImage(
            image: NetworkImage(img),
            placeholder: const AssetImage('assets/ios.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            placeholderFit: BoxFit.fitHeight,
          ),
          //
          Container(
            color: AppTheme.primary,
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.all(10),
            child: const Text('Una imagen random'),
          )
        ],
      ),
    );
  }
}
