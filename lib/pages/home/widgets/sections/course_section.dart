import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';

import '../course_item.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 15,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CourseItem();
          },
        );
      },
    );
  }
}
