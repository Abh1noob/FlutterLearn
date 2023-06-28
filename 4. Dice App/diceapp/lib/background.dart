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
          end: Alignment.topLeft,
          colors: [
            Color.fromRGBO(10, 77, 104, 1),
            Color.fromRGBO(5, 191, 219, 1),
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
