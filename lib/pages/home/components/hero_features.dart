import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HeroFeatures extends StatelessWidget {
  const HeroFeatures({super.key});

  static const List<FeatureItem> features = <FeatureItem>[
    FeatureItem(
      icon: Icons.gps_fixed,
      title: 'Instant Detection',
      subtitle: 'Stay informed in real-time',
    ),
    FeatureItem(
      icon: Icons.language,
      title: '4 Billion Websites',
      subtitle: 'Scanned in seconds',
    ),
    FeatureItem(
      icon: Icons.copyright,
      title: 'Zero-Effort DMCA',
      subtitle: 'Preparation and Takedown',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          for (FeatureItem feature in features) FeatureCard(feature: feature),
        ],
      ),
    );
  }
}

class FeatureItem {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

class FeatureCard extends StatelessWidget {
  final FeatureItem feature;

  const FeatureCard({
    super.key,
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            color: const Color(0xFFE6EAF5),
            shape: BoxShape.circle,
          ),
          child: Icon(feature.icon),
        ),
        Text(
          feature.title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          feature.subtitle,
          style: const TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
