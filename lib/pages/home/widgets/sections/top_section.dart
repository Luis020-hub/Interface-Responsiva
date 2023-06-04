import 'package:flutter/material.dart';
import 'package:responsive/pages/home/widgets/sections/custom_search_field.dart';

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
                const AspectRatio(
                  aspectRatio: 3.4,
                  child: Image(
                    image: AssetImage('images/flutter.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      width: 450,
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: const [
                          Text(
                            'Learning FLutter',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Learning FLutter in Udemy. Guaranteed quality',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
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
