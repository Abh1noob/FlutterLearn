import 'package:diceapp/content.dart';
import 'package:flutter/material.dart';

class BgGraphics extends StatelessWidget {
  const BgGraphics({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(3, 169, 234, 1),
            Color.fromRGBO(236, 240, 240, 1),
            // Color.fromRGBO(12, 19, 79, 1),
          ],
        ),
      ),
      child: const Center(
        child: MainBody(),
      ),
    );
  }
}