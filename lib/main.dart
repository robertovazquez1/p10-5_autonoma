import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        title: Text("Container 1"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Roberto Vazquez Avendaño 22308051281326",
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 75,
            ),
            Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
            ),
            SizedBox(height: 20),
            // Rectángulo Rojo con Borde Punteado
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(15),
              dashPattern: [6, 3],
              color: Colors.black,
              strokeWidth: 2,
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Círculo Naranja con Borde Punteado
            DottedBorder(
              borderType: BorderType.Circle,
              dashPattern: [6, 3],
              color: Colors.black,
              strokeWidth: 2,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(height: 20),
            // FlutterLogo con Borde Punteado Circular
            DottedBorder(
              borderType: BorderType.Circle,
              dashPattern: [6, 3],
              color: Colors.black,
              strokeWidth: 2,
              child: Padding(
                padding: EdgeInsets.all(8), // Espaciado dentro del borde
                child: FlutterLogo(size: 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
