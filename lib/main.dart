import 'package:flutter/material.dart';


void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(),
            body: new CustomPaint(
                foregroundPainter: TextCustomPainter()
            ) // CustomPaint
        ) // Scaffold
    )// MaterialApp
);

class TextCustomPainter extends CustomPainter {
  const TextCustomPainter();

  @override
  void paint(Canvas canvas, Size size) {
    const offset = Offset(200, 200);
    TextPainter(
      text: const TextSpan(
        text: 'Какой-то текст!',
        style: TextStyle(color: Colors.black),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )
      ..layout(minWidth: size.width)
      ..paint(
        canvas,
        offset,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}