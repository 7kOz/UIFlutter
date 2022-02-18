import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboard/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome To ZIUM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = [
    CardPlanetData(
      title: 'Zium',
      subtitle: 'Hello Tiktok',
      image: const AssetImage('assets/images/0.png'),
      backgroundColor: const Color.fromARGB(255, 125, 5, 136),
      titleColor: const Color.fromARGB(255, 10, 162, 189),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset('assets/animations/1.json'),
    ),
    CardPlanetData(
      title: 'App Design',
      subtitle: 'We Design Apps Together',
      image: const AssetImage('assets/images/1.webp'),
      backgroundColor: Colors.white,
      titleColor: Colors.deepPurple,
      subtitleColor: Colors.cyan,
      background: LottieBuilder.asset('assets/animations/2.json'),
    ),
    CardPlanetData(
      title: 'App Dev',
      subtitle: 'We Develop Apps Together',
      image: const AssetImage('assets/images/3.png'),
      backgroundColor: const Color.fromARGB(255, 22, 45, 117),
      titleColor: Colors.cyan,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset('assets/animations/3.json'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        // null = infinity
        itemCount: data.length,
        itemBuilder: (int index, double value) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
