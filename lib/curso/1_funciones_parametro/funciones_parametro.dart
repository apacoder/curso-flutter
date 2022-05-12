import 'package:flutter/material.dart';

class FuncionesParametro extends StatefulWidget {
  const FuncionesParametro({Key? key}) : super(key: key);

  @override
  State<FuncionesParametro> createState() => _FuncionesParametroState();
}

class _FuncionesParametroState extends State<FuncionesParametro> {
  int clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter State'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Clicks',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$clicks',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingAction(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }

  void increase() {
    clicks++;
    setState(() {});
  }

  void decrease() {
    clicks--;
    setState(() {});
  }

  void reset() {
    clicks = 0;
    setState(() {});
  }
}

class CustomFloatingAction extends StatelessWidget {
  const CustomFloatingAction({
    Key? key,
    required this.increaseFn,
    required this.resetFn,
    required this.decreaseFn,
  }) : super(key: key);

  final Function increaseFn;
  final Function resetFn;
  final Function decreaseFn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: (() => increaseFn()),
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: (() => resetFn()),
          child: const Icon(Icons.refresh_outlined),
        ),
        FloatingActionButton(
          onPressed: (() => decreaseFn()),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
