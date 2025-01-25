import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: const Column(
            children: <Widget>[
              FooterNavigation(),
              SizedBox(height: 48),
              Divider(),
              SizedBox(height: 24),
              CopyrightText(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: BrandLogo()),
        Expanded(
          child: FooterSection(
            title: 'PRODUCT',
            items: <String>['Features'],
          ),
        ),
        Expanded(
          child: FooterSection(
            title: 'COMPANY',
            items: <String>['Blog', 'Privacy Policy', 'Terms & Conditions'],
          ),
        ),
        Expanded(
          child: FooterSection(
            title: 'HELP',
            items: <String>['Contact Us', 'FAQ\'s'],
          ),
        ),
      ],
    );
  }
}

class BrandLogo extends StatelessWidget {
  const BrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        FlutterLogo(size: 32),
        SizedBox(width: 8),
        Text(
          'Bustem',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),
        ...items.map((String item) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(item),
            )),
      ],
    );
  }
}

class CopyrightText extends StatelessWidget {
  const CopyrightText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '© Bustem ${DateTime.now().year}',
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 14,
      ),
    );
  }
}
