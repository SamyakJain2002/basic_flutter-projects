import 'package:calculator/models/functioning.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Calculation>(
      create: (context) => Calculation(),
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}
