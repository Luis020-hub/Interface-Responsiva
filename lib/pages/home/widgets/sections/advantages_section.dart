import 'package:flutter/material.dart';

class AdvantageSections extends StatelessWidget {
  const AdvantageSections({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 10,
        children: [
          buildAdvantage('+45.000 Students', 'Garanted Content'),
          buildAdvantage('+45.000 Students', 'Garanted Content'),
          buildAdvantage('+45.000 Students', 'Garanted Content'),
        ],
      ),
    );
  }
}
