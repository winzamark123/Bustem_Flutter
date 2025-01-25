import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // decoration: BoxDecoration(
        //   border: Border.all(),
        // ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                HeroStats(),
                HeroTitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HeroStats extends StatelessWidget {
  const HeroStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShadBadge.outline(
      backgroundColor: const Color(0xFFE6EAF5),
      hoverBackgroundColor: const Color(0xFFE6EAF5),
      child: SizedBox(
        width: 400,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('CN'),
            ),
            const ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('CN'),
            ),
            const ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('CN'),
            ),
            const SizedBox(width: 8.0),
            Flexible(
              child: Text(
                'Trusted by 8k+ ecommerce founders',
                style: const TextStyle(color: Color(0xFF566CAD)),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeroTitle extends StatelessWidget {
  const HeroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        children: <Widget>[
          Text(
            'Identify And Bust Copycats',
            style: const TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          Text(
            'With One Click',
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
