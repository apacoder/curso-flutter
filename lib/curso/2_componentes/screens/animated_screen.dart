import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  bool _isPresed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline, size: 40),
        onPressed: changeShape,
      ),
    );
  }

  void changeShape() {
    Random rnd = Random();
    _width = rnd.nextInt(300) + 70;
    _height = rnd.nextInt(300) + 70;
    _color = Color.fromRGBO(
      rnd.nextInt(256),
      rnd.nextInt(256),
      rnd.nextInt(256),
      1,
    );
    _borderRadius = BorderRadius.circular(rnd.nextInt(200) + 1);
    _isPresed = !_isPresed;
    setState(() {});
  }
}
