import 'package:flutter/material.dart';
import 'components/cta.dart';
import 'components/hero_section.dart';
import 'components/hero_features.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Padding(
        padding: const EdgeInsets.all(24.0),
        child: const Column(
          children: <Widget>[
            HeroSection(),
            Cta(),
            HeroFeatures(),
          ],
        ),
      ),
    );
  }
}
