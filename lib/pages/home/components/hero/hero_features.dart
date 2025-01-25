import 'package:flutter/material.dart';

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
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: SizedBox(
        width: width * 0.8, // Container will take 80% of screen width
        child: width < 600
            ? Column(
                children: <Widget>[
                  for (FeatureItem feature in features)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: FeatureCard(feature: feature),
                    ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  for (FeatureItem feature in features)
                    SizedBox(
                      width:
                          width * 0.25, // Each card takes ~25% of screen width
                      child: FeatureCard(feature: feature),
                    ),
                ],
              ),
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
    return SizedBox(
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Color(0xFFE6EAF5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              feature.icon,
              size: 24,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  feature.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  feature.subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
