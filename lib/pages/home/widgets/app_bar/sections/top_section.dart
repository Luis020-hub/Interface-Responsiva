import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: [
                Image.network(
                  'https://www.materialize.pro/wp-content/uploads/2021/10/FLUTTER-scaled.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
