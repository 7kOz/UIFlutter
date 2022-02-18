import 'package:flutter/material.dart';

class CardPlanetData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;

  const CardPlanetData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    this.background,
  });
}

class CardPlanet extends StatelessWidget {
  const CardPlanet({required this.data, Key? key}) : super(key: key);

  final CardPlanetData data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Flexible(child: Image(image: data.image)),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  data.title.toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 4,
                    fontSize: 30,
                    color: data.titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                data.subtitle,
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: data.subtitleColor,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
