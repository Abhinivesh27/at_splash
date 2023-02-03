import 'package:example/atsplash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ATsplash(
        isTextIcon: false,
        isImageIcon: true,
        afterSplash: () {
          print("Nane periya Hacker uh....!");
        },
      ),
    );
  }
}
