import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double actualValue = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Slider(
              value: actualValue,
              min: 40,
              max: 400,
              onChanged: (value) {
                actualValue = value;
                setState(() {});
              },
            ),
            Slider(
              value: actualValue,
              divisions: 4,
              min: 40,
              max: 400,
              onChanged: (value) {
                actualValue = value;
                setState(() {});
              },
            ),
            Image(
              width: actualValue,
              image: const NetworkImage(
                'https://i.pinimg.com/originals/21/c2/3f/21c23fd79c981df5afa862abf54c00a4.png',
              ),
            )
          ],
        ),
      ),
    );
  }
}
