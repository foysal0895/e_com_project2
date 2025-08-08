import 'package:flutter/material.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.sizes});
  final List<String> sizes; // Now using text sizes, not colors

  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Size',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: getSizeItems(),
          ),
        ),
      ],
    );
  }

  List<Widget> getSizeItems() {
    List<Widget> sizeItems = [];
    for (int i = 0; i < widget.sizes.length; i++) {
      bool isSelected = _selectedIndex == i;

      sizeItems.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = i;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 6),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected ? Colors.teal : Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 1.2,
              ),
            ),
            child: Text(
              widget.sizes[i],
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    }
    return sizeItems;
  }
}
