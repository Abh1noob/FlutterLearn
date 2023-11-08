import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/assets/components/drawer.dart';
import 'package:weather_app/constants/colors.dart';
import 'package:weather_app/constants/text.dart';
import 'package:weather_app/pages/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/pages/home/ui/components/weatherWidgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> recent_city = ["thane"];
  final cityInput = TextEditingController();

  @override
  void initState() {
    super.initState();
    homeBloc.add(GetRequestFetchEvent(recent_city[0]));
  }

  final HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    String hinttext = "Search for your city...";
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        shadowColor: CustomColors().color2,
        child: const CustomDrawer(),
      ),
      appBar: AppBar(
        title: Text(
          "Weather!",
          style: CustomText().primaryFont,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listenWhen: (previous, current) => current is HomeActionState,
        buildWhen: (previous, current) => current is! HomeActionState,
        listener: (context, state) {
          if (state is FetchingError) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('City name does not exist'),
              duration: Duration(milliseconds: 2000),
            ));
            homeBloc
                .add(GetRequestFetchEvent(recent_city[recent_city.length - 2]));
          }
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case LoadingState:
              return Center(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: CustomColors().primaryBackgroundGradient),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(color: Colors.white),
                    ],
                  ),
                ),
              );
            case GetRequestState:
              final weather = state as GetRequestState;
              return Center(
                child: Container(
                    decoration: BoxDecoration(
                        gradient: CustomColors().primaryBackgroundGradient),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: TextField(
                                    style: CustomText()
                                        .primaryFont
                                        .copyWith(fontSize: 20),
                                    controller: cityInput,
                                    decoration: InputDecoration(
                                      focusColor: CustomColors().color1,
                                      hintText: hinttext,
                                      hintStyle: TextStyle(
                                          color: CustomColors().color2),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.amber),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
                                      prefixIcon: const Icon(Icons.search),
                                      prefixIconColor: CustomColors().color1,
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(100)),
                                    color: CustomColors().color1,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        recent_city.add(cityInput.text);
                                        homeBloc
                                            .add(GetRequestFetchEvent(recent_city[recent_city.length - 1]));
                                      },
                                      icon: const Icon(Icons.send_rounded)),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 50, 10, 50),
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 880,
                                          color: CustomColors().color2)
                                    ],
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius:
                                        const BorderRadiusDirectional.all(
                                            Radius.circular(70))),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        weather.weatherData.name.toString(),
                                        style: GoogleFonts.ubuntu(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w700,
                                            color: CustomColors().color2),
                                      ),
                                      Row(
                                        children: [
                                          WeatherWidgets().cloudy,
                                          const Spacer(),
                                          Text(
                                              weather.weatherData.main.temp
                                                  .toString(),
                                              style: GoogleFonts.ubuntu(
                                                  fontWeight: FontWeight.w900,
                                                  color: CustomColors().color1,
                                                  fontSize: 55)),
                                          Text("\u00b0",
                                              style: GoogleFonts.ubuntu(
                                                  fontWeight: FontWeight.w900,
                                                  color: CustomColors().color1,
                                                  fontSize: 40)),
                                          const Spacer(),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Min Temp: ",
                                                style: CustomText()
                                                    .primaryFont
                                                    .copyWith(fontSize: 20),
                                              ),
                                              Text(
                                                weather.weatherData.main.tempMin
                                                    .toString(),
                                                style: CustomText()
                                                    .primaryFont
                                                    .copyWith(
                                                        fontSize: 20,
                                                        color: CustomColors()
                                                            .color1),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "|",
                                            style: CustomText()
                                                .primaryFont
                                                .copyWith(
                                                    fontSize: 40,
                                                    fontWeight:
                                                        FontWeight.normal),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Min Temp: ",
                                                style: CustomText()
                                                    .primaryFont
                                                    .copyWith(fontSize: 20),
                                              ),
                                              Text(
                                                weather.weatherData.main.tempMax
                                                    .toString(),
                                                style: CustomText()
                                                    .primaryFont
                                                    .copyWith(
                                                        fontSize: 20,
                                                        color: CustomColors()
                                                            .color1),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              );

            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
