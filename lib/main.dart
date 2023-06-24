import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:onboarding_v1/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Satoshi',
      ),
      home: Onboarding(),
    );
  }
}

class Onboarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Fashion Store',
      subTitle: 'Browse the menu and order directly from the application',
      imageUrl: 'assets/images/onboarding3.png',
    ),
    Introduction(
      title: 'Delivery',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/images/onboarding2.png',
    ),
    Introduction(
      title: 'Receive Money',
      subTitle: 'Pick up delivery at your door and enjoy groceries',
      imageUrl: 'assets/images/onboarding1.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: const Color(0xFFFFAA00),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 18,
      ),
    );
  }
}
