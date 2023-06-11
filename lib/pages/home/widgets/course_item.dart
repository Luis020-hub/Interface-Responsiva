import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(
          image: AssetImage('images/flutter.jpg'),
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 5),
        Flexible(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return const AutoSizeText(
                'Flutter App Creation',
                minFontSize: 3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        const Text(
          'Luís :)',
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
