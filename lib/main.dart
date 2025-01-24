import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import './components/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.material(
      darkTheme: ShadThemeData(
        brightness: Brightness.light,
        colorScheme: const ShadSlateColorScheme.light(),
      ),
      home: const MainLayout(),
      // child: const MainLayout()
    );
  }
}
