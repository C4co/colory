import 'package:flutter/material.dart';
import 'package:colory/colory.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Colory'),
        ),
        body: const Center(
          child: Colory(),
        ),
      ),
    );
  }
}
