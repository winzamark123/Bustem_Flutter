import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          'Frequently Asked Questions',
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),
        ShadAccordion<({String content, String title})>(
          children: details.map(
            (({String content, String title}) detail) =>
                ShadAccordionItem<({String content, String title})>(
              value: detail,
              title: Text(detail.title),
              child: Text(detail.content),
            ),
          ),
        ),
      ],
    );
  }
}

final List<({String content, String title})> details =
    <({String content, String title})>[
  (
    title: 'How does Bustem work?',
    content:
        'Bustem is like your digital watchdog—sniffing out copycats across '
        'websites, social media, ad platforms, and marketplaces. It refreshes '
        'your dashboard daily with the latest offenders and gives you tools to '
        'DMCA them into oblivion, monitor post-takedown activity, send cease-and-'
        'desist letters, and more. Basically, it lets you HUNT AND KILL anyone '
        'messing with your brand.',
  ),
  (
    title: 'Can\'t my VA handle this manually?',
    content:
        'Sure, if your VA is secretly an AI with the power to scan billions of pages, '
        'conduct reverse image searches, filter keywords, and automate takedowns. '
        'Otherwise, you\'d need the entire workforce of the Philippines working '
        'around the clock for decades. Bustem does all that—every single day—while '
        'your VA enjoys their coffee break.',
  ),
  (
    title: 'How long does a DCMA takedown take?',
    content:
        'Once a DMCA takedown request is filed, the offending party has 10 to respond.'
        'If they don\'t respond, the content host will remove the content.'
        'If they do respond, they will likely file a counter notification, and you may have to take legal action to get your content removed.'
        'This process can take a month or longer.',
  ),
];
