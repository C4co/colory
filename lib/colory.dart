import 'package:flutter/material.dart';

class Colory extends StatefulWidget {
  const Colory({super.key});

  @override
  State<Colory> createState() => _ColoryState();
}

class _ColoryState extends State<Colory> {
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return SizedBox(
              height: 200,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: const Text('Open colory'),
    );
  }
}
