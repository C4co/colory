import 'package:flutter/material.dart';
import './main_colors.dart';
import './color_functions.dart';
import './color_list.dart';

class ColoryContent extends StatefulWidget {
  const ColoryContent({
    super.key,
  });

  @override
  State<ColoryContent> createState() => _ColoryContentState();
}

class _ColoryContentState extends State<ColoryContent> {
  Color selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ColorList(
            onColorChanged: (color) {
              setState(() {
                selectedColor = color;
              });
            },
            colors: mainColors,
          ),
          Divider(color: Colors.white.withOpacity(0.2)),
          ColorList(
            colors: selectedColor == Colors.white || selectedColor == Colors.black ? blackWhiteRange() : variations(color: selectedColor),
            onColorChanged: (color) {},
          ),
        ],
      ),
    );
  }
}
