import 'package:flutter/material.dart';
import 'package:widget_tree/background.dart';
import 'package:widget_tree/appbar.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        appBar: Tab(
          child: AppbarGradient(),
        ),
        body: BgGradient(),
      ),
    ),
  );
}