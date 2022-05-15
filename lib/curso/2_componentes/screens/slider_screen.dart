import 'package:examples/curso/2_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double actualValue = 400;
  bool isCheckBoxActive = false;
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
              onChanged: isCheckBoxActive
                  ? (value) {
                      actualValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            Slider(
              value: actualValue,
              divisions: 4,
              min: 40,
              max: 400,
              onChanged: isCheckBoxActive
                  ? (value) {
                      actualValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            Checkbox(
              activeColor: AppTheme.primary,
              value: isCheckBoxActive,
              onChanged: (val) {
                isCheckBoxActive = val ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              title: const Text(
                'Habilitar slider',
                style: TextStyle(fontSize: 20),
              ),
              activeColor: AppTheme.primary,
              value: isCheckBoxActive,
              onChanged: (val) {
                isCheckBoxActive = val ?? true;
                setState(() {});
              },
            ),
            SwitchListTile(
              activeColor: AppTheme.primary,
              value: isCheckBoxActive,
              title: const Text(
                'Habilitar slider',
                style: TextStyle(fontSize: 20),
              ),
              onChanged: (val) {
                isCheckBoxActive = val;
                setState(() {});
              },
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  width: actualValue,
                  image: const NetworkImage(
                    'https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Character_Ganyu_Card.png',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
