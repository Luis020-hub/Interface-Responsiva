// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive/pages/home/app_bar/web_app.bar.dart';
import 'package:responsive/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:responsive/pages/home/widgets/sections/advantages_section.dart';
import 'package:responsive/pages/home/widgets/sections/top_section.dart';

import '../../breakpoints.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.minWidth < mobileBreakPoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer:
              constraints.minWidth < mobileBreakPoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantageSections(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
