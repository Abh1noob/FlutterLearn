import 'package:flutter/material.dart';
import 'parentscreen.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: ParentScreen(),
      ),
    ),
    debugShowCheckedModeBanner: true,
  ));
}
