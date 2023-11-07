import 'package:flutter/material.dart';

class WeatherWidgets {
  Container cloudy = Container(
    padding: const EdgeInsets.fromLTRB(10, 20, 25, 10),
    // color: Colors.black,
    height: 200,
    width: 200,
    child: ClipOval(
        child: Image.asset(
      "lib/assets/images/cloudy.png",
    )),
  );

  Container night = Container(
    padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
    // color: Colors.black,
    height: 200,
    width: 200,
    child: ClipOval(
        child: Image.asset(
      "lib/assets/images/night.png",
    )),
  );

  Container sunny = Container(
    padding: const EdgeInsets.fromLTRB(10, 30, 30, 10),
    // color: Colors.black,
    height: 200,
    width: 200,
    child: ClipOval(
        child: Image.asset(
      "lib/assets/images/sunny.png",
    )),
  );

  Container rainy = Container(
    padding: const EdgeInsets.fromLTRB(10, 30, 30, 10),
    // color: Colors.black,
    height: 200,
    width: 200,
    child: ClipOval(
        child: Image.asset(
      "lib/assets/images/rainy.png",
    )),
  );
}
