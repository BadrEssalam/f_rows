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

                  /// If we made the column contained inside the container:
                  /// the column will cover all the vertical space of the widgets inside of it, so:
                  /// how can we control this property?
                  ///  * by: mainAxisSize: MainAxisSize.min,
                  ///    Minimize the amount of free space along the main axis
                  ///  * and: mainAxisSize: MainAxisSize.max, (The default state)
                  ///    Maximize the amount of free space along the main axis
                  mainAxisSize: MainAxisSize.max,

                  /// To control the alignement of text(s) on the main axis:
                  ///  * mainAxisAlignment: MainAxisAlignment.start,
                  ///    Place the children as close to the start of the main axis as possible.
                  ///  * mainAxisAlignment: MainAxisAlignment.center,
                  ///    Place the children as close to the middle of the main axis as possible.
                  ///  * mainAxisAlignment: MainAxisAlignment.end,
                  ///    Place the children as close to the end of the main axis as possible.
                  ///  * mainAxisAlignment: MainAxisAlignment.spaceAround,
                  ///    Place the free space evenly between the children as well as half of
                  ///    that space before and after the first and last child.
                  ///  * mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ///    Place the free space evenly between the children
                  ///    as well as before and after the first and last child.
                  ///  * mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ///    Place the free space evenly between the children.
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  /// To control the alignement of text(s) on the cross axis:
                  ///  * crossAxisAlignment: CrossAxisAlignment.start,
                  ///    Place the children with their start edge aligned
                  ///    with the start side of the cross axis.
                  ///  * crossAxisAlignment: CrossAxisAlignment.end,
                  ///    Place the children as close to the end of
                  ///    the cross axis as possible.
                  ///  * crossAxisAlignment: CrossAxisAlignment.center,
                  ///    Place the children so that their centers align
                  ///    with the middle of the cross axis.
                  ///    Note: This is the default cross-axis alignment.
                  ///  * crossAxisAlignment: CrossAxisAlignment.stretch,
                  ///    Require the children to fill the cross axis.
                  ///    This causes the constraints passed to the children
                  ///    to be tight in the cross axis.
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
              //  const Row(
              //   mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Text(
              //       "This is a new day",
              //       style: TextStyle(fontSize:15, color: Colors.black),
              //     ),
              //     Text(
              //       "to create reasons",
              //       style: TextStyle(fontSize:15, color: Colors.black),
              //     ),
              //     Text(
              //       "of success",
              //       style: TextStyle(fontSize:15, color: Colors.black),
              //     ),
              //   ],
              // ),
            )));
  }
}
