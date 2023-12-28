import 'package:flutter/material.dart';

class ColorList extends StatefulWidget {
  final List<Color> colors;
  final Function(Color) onColorChanged;

  const ColorList({
    super.key,
    required this.colors,
    required this.onColorChanged,
  });

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int? selectedColors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: widget.colors.length,
        itemBuilder: (context, index) {
          Color color = widget.colors[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedColors = index;
                widget.onColorChanged(color);
              });
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 2,
                  color: selectedColors == index ? Colors.white : const Color.fromARGB(255, 34, 34, 34),
                ),
              ),
              child: Center(
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: color,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
