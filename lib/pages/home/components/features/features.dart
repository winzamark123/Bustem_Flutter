import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('From Scanning to DMCA Takedown Service',
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold)),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.8,
          children: featureContents
              .map((FeatureContent feature) => FeatureItem(
                    icon: feature.icon,
                    title: feature.title,
                    description: feature.description,
                  ))
              .toList(),
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 500,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: FeatureText(
              icon: icon,
              title: title,
              description: description,
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureText extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const FeatureText({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(icon, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureContent {
  final IconData icon;
  final String title;
  final String description;

  const FeatureContent({
    required this.icon,
    required this.title,
    required this.description,
  });
}

const List<FeatureContent> featureContents = <FeatureContent>[
  FeatureContent(
    icon: Icons.link,
    title: 'Enter Your Brand\'s Site',
    description:
        'Our advanced algorithms collect all your store\'s content — images, videos, headlines, and text.',
  ),
  FeatureContent(
    icon: Icons.visibility,
    title: 'Find Out Who\'s Stealing Your Content',
    description:
        'Our system scans billions of sites in seconds, pinpointing potential copycats',
  ),
  FeatureContent(
    icon: Icons.timer,
    title: 'Swift and Seamless Takedowns',
    description:
        'DMCA removals? Cease and desist letters? Our DMCA takedown service has got it covered. We even give you the option to send a letter to the infringer\'s mom - because why not?',
  ),
  FeatureContent(
    icon: Icons.analytics,
    title: 'Always-On Monitoring Smart Analytics',
    description:
        'Submit your site once. We scan constantly, provide analytics, and track repeat offenders.',
  ),
];
