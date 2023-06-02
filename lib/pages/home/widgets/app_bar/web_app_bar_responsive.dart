import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 4),
                    IconButton(
                      icon: const Icon(Icons.search),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type something',
                          isCollapsed: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 32),
            if (constraints.maxWidth >= 400) ...[
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Learn',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            const SizedBox(width: 8),
            if (constraints.maxWidth >= 500) ...[
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            const SizedBox(width: 8),
          ],
        );
      }),
    );
  }
}
