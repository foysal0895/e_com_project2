import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key, required this.colors});
  final List<Color> colors;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  int _selectedIndex = 0; // Tracks the index of the selected color

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getColorItems(),
      ),
    );
  }

  List<Widget> getColorItems() {
    List<Widget> colorItems = [];
    for (int i = 0; i < widget.colors.length; i++) {
      colorItems.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = i; // Update the selected index on tap
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: widget.colors[i],
              child: _selectedIndex == i
                  ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              )
                  : null,
            ),
          ),
        ),
      );
    }
    return colorItems;
  }
}