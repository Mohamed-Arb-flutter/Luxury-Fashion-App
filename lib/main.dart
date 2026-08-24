import 'package:flutter/material.dart';
import 'package:store_app/Feather/Home/viwes/Home.dart';

void main() {
  runApp(const LuxuryFashionApp());
}

class LuxuryFashionApp extends StatelessWidget {
  const LuxuryFashionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home(),theme: ThemeData(scaffoldBackgroundColor: Colors.white),);
  }
}
