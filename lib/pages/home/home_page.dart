import 'package:flutter/material.dart';
import 'components/carousel/carousel.dart';
import 'components/faq/faq.dart';
import 'components/features/features.dart';
import 'components/footer.dart';
import 'components/hero/cta.dart';
import 'components/hero/hero_features.dart';
import 'components/hero/hero_section.dart';

class HomePage extends StatelessWidget {
  final ScrollController scrollController;
  final Map<String, GlobalKey> sectionKeys;

  const HomePage({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: <Widget>[
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Container(
                key: sectionKeys['home'],
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      HeroSection(),
                      SizedBox(height: 32),
                      Cta(),
                      SizedBox(height: 32),
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
              child: Features(key: sectionKeys['features']),
            ),
          ),
          const SizedBox(height: 48),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Faq(key: sectionKeys['faqs']),
            ),
          ),
          const SizedBox(height: 48),
          const Footer(),
        ],
      ),
    );
  }
}
