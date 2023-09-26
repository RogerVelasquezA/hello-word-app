import 'package:flutter/material.dart';

class CounterSreen extends StatefulWidget {
  const CounterSreen({super.key});

  @override
  State<CounterSreen> createState() => _CounterSreenState();
}

class _CounterSreenState extends State<CounterSreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter String'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // centrar el widget verticalmente
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //llama al boton de click
        onPressed: () {
          // refresca la pantalla
          setState(() {
            clickCounter += 1;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
