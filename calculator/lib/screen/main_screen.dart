// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/calci_widgets/keypad.dart';
import 'package:calculator/calci_widgets/scientifickeypad.dart';
import 'package:calculator/models/functioning.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget changeKeyPad() {
    return Provider.of<Calculation>(context).scientific
        ? const ScientificKeypad()
        : const KeyPad();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      Provider.of<Calculation>(context).equation,
                      style: TextStyle(
                        fontSize: Provider.of<Calculation>(context).scientific
                            ? 34
                            : 38,
                        color: const Color(0xff363942),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      Provider.of<Calculation>(context).result,
                      style: TextStyle(
                        fontSize: Provider.of<Calculation>(context).scientific
                            ? 46
                            : 48,
                        color: const Color(0xff363942),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: Provider.of<Calculation>(context).scientific ? 5 : 3,
              child: AnimatedSwitcher(
                  child: changeKeyPad(),
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) =>
                          SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1.0, 1.0),
                                    end: const Offset(0.0, 0.0))
                                .animate(animation),
                            child: child,
                          )),
            )
          ],
        ),
      ),
    );
  }
}
