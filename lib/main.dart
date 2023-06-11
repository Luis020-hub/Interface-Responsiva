import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive/pages/home/HomePage.dart';

void main() {
  runApp(DevicePreview(builder: (_) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: const HomePage(),
    );
  }
}
