// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:test_application/color_extensions.dart';
import 'package:test_application/helper_functions.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Color backgroundColor = const Color(0xffffffff);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GestureDetector(
        onTap: () => changeBackgroundColor(),
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Center(
            child: Text(
              "Hello there",
              style: TextStyle(
                color:
                    backgroundColor.isColorDark ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeBackgroundColor() {
    final hexColor = generateRandomHexColor();
    final int colorValue = convertHexColorToInt(hexColor);
    if (colorValue != -1) {
      setState(() {
        backgroundColor = Color(colorValue);
      });
    }
  }
}
