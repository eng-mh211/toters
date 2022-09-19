import 'package:flutter/material.dart';

import 'App/Splash_sec.dart';

void main() {
  runApp(toters());
}

class toters extends StatelessWidget {
  const toters({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    );
  }
}

