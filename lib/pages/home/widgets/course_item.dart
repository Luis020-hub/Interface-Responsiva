import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Image(
          image: AssetImage('images/flutter.jpg'),
          fit: BoxFit.fitWidth,
        ),
        SizedBox(height: 5),
        Text(
          'Flutter App Creation',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
        Text(
          'Luís :)',
          style: TextStyle(

            fontStyle: FontStyle.normal,
            fontSize: 15,
            color: Colors.grey,
          ),
        ),
        Text(
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
