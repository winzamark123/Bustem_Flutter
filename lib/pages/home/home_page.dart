import 'package:flutter/material.dart';
import 'components/carousel.dart';
import 'components/cta.dart';
import 'components/hero_features.dart';
import 'components/hero_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      HeroSection(),
                      Cta(),
                      HeroFeatures(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Carousel(),
        ],
      ),
    );
  }
}
