import 'package:flutter/material.dart';

import 'colory_content.dart';

class Colory extends StatefulWidget {
  const Colory({super.key});

  @override
  State<Colory> createState() => _ColoryState();
}

class _ColoryState extends State<Colory> {
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const ColoryContent();
          },
        );
      },
      child: const Text('Open colory'),
    );
  }
}
