import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RowWidget(),
    );
  }
}

/// 18 - Widget Row
/// Row widget has the same chracteristics as Column widget.
class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            drawer: const Drawer(),
            body: Container(
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///
                    ///
                    Container(
                      padding: const EdgeInsets.all(5),
                      constraints:
                          BoxConstraints.tight(const Size.fromRadius(60)),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue[400], shape: BoxShape.circle),
                      child: const Text(
                        "I hope to be a good programmer.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ///
                    ///
                    Container(
                      padding: const EdgeInsets.all(5),
                      constraints:
                          BoxConstraints.tight(const Size.fromRadius(60)),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 203, 107, 28),
                          shape: BoxShape.circle),
                      child: const Text(
                        "But you can not be",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ///
                    ///
                    Container(
                      padding: const EdgeInsets.all(5),
                      constraints:
                          BoxConstraints.tight(const Size.fromRadius(60)),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue[400], shape: BoxShape.circle),
                      child: const Text(
                        "if you 're not ready to work hard",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            )));
  }
}
