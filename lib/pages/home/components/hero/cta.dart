import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Cta extends StatelessWidget {
  const Cta({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 75,
            child: CtaTextbox(),
          ),
          Expanded(
            flex: 25,
            child: CtaButton(),
          ),
        ],
      ),
    );
  }
}

class CtaButton extends StatelessWidget {
  const CtaButton({super.key});
  @override
  Widget build(BuildContext context) {
    return const ShadButton(
      width: double.infinity,
      backgroundColor: Color(0xFF1B2452),
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.qr_code_scanner, color: Colors.white, size: 20),
          SizedBox(width: 4),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Start Scan',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  "it's free",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CtaTextbox extends StatefulWidget {
  const CtaTextbox({super.key});

  @override
  State<CtaTextbox> createState() => _CtaTextboxState();
}

class _CtaTextboxState extends State<CtaTextbox> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ShadInput(
        controller: _controller,
        placeholder: const Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.link, size: 16),
            SizedBox(width: 8),
            Text('yoursites.com/products'),
          ],
        ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
          // Handle text changes here
        },
      ),
    );
  }
}
