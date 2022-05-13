import 'package:examples/curso/2_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imgUrl;

  const CustomCard2({required this.imgUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Column(
        children: [
          //
          FadeInImage(
            image: NetworkImage(imgUrl),
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
