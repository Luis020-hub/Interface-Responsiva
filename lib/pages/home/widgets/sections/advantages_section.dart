import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';

class AdvantagesSections extends StatelessWidget {
  const AdvantagesSections({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
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

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakPoint) {
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
              spacing: 4,
              children: [
                buildHorizontalAdvantage(
                  '+45.000 Students',
                  'Garanted Content',
                ),
                buildHorizontalAdvantage(
                  '+45.000 Students',
                  'Garanted Content',
                ),
                buildHorizontalAdvantage(
                  '+45.000 Students',
                  'Garanted Content',
                ),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantage(
                  '+45.000 Students',
                  'Garanted Content',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: buildVerticalAdvantage(
                  '+45.000 Students',
                  'Garanted Content',
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: buildVerticalAdvantage(
                  '+45.000 Students',
                  'Garanted Content',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
