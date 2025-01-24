import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: <Widget>[
          HeroStats(),
          HeroTitle(),
        ],
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
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('CN'),
            ),
            ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('CN'),
            ),
            ShadAvatar(
              'https://app.requestly.io/delay/2000/avatars.githubusercontent.com/u/124599?v=4',
              placeholder: Text('CN'),
            ),
            const SizedBox(width: 8.0),
            Text(
              'Trusted by 8k+ ecommerce founders',
              style: TextStyle(color: const Color(0xFF566CAD)),
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
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Text(
        'Identify And Bust Copycats With One Click',
        style: TextStyle(
          fontSize:
              MediaQuery.of(context).size.width * 0.07, // Responsive font size
          fontWeight: FontWeight.bold,
        ),
        softWrap: true,
      ),
    );
  }
}
