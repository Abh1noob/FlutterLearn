import 'package:flutter/material.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration:
          BoxDecoration(gradient: CustomColors().primaryBackgroundGradient),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.person),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Lorem ipsum",
                        style: CustomText().primaryFont.copyWith(fontSize: 20)),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              )),
          const SizedBox(
            height: 100,
          ),
          Text(
            "Drawer To Be Implemented",
            style: CustomText().primaryFont.copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
