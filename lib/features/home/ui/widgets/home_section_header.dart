
import 'package:flutter/material.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
       GestureDetector(
          onTap: onTap,
         child: Text(
            'See all',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.blue,

            ),

          ),
       )

      ],
    );
  }
}
