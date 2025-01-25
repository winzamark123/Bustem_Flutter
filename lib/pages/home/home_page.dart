import 'package:flutter/material.dart';
import 'components/carousel/carousel.dart';
import 'components/faq/faq.dart';
import 'components/features/features.dart';
import 'components/footer.dart';
import 'components/hero/cta.dart';
import 'components/hero/hero_features.dart';
import 'components/hero/hero_section.dart';

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
                // decoration: BoxDecoration(
                //   border: Border.all(),
                //   borderRadius: BorderRadius.circular(12.0),
                // ),
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
          const SizedBox(height: 48),
          const Carousel(),
          const SizedBox(height: 48),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: const Features(),
            ),
          ),
          const SizedBox(height: 48),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: const Faq(),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
