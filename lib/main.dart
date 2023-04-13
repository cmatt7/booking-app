import 'package:flutter/material.dart';
import 'package:booking_app/components/bottom_bar.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: BottomBar(),
        ),
      ),
    );
  }
}
