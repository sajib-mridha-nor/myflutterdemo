import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myflutterdemo/demo.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Day3 extends StatelessWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: LinearGradient(colors: [Colors.black, Colors.red]),
      ),

      // AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.menu),
      //   ),
      //   title: Text("Today"),
      //   flexibleSpace: FlexibleSpaceBar(
      //     background: Container(
      //       decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //               colors: [
      //             Colors.blue,
      //             Colors.yellow,
      //             // Colors.purple,
      //             Colors.green
      //           ],
      //               // center: Alignment.topRight,
      //               // stops: [0.2, .9, .5, .7],
      //               begin: Alignment(.6, .2),
      //               end: Alignment(.2, .9))),
      //     ),
      //   ),
      // ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => Page1()));
                  },
                  child: Text("Click Me!"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Page1()));
                  },
                  child: Text("Click Me!2"),
                ),
              ],
            ),
          ),
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              gradient: SweepGradient(
            colors: [Colors.blue, Colors.yellow, Colors.purple, Colors.green],
            // center: Alignment.topRight,
            stops: [0.2, .9, .5, .7],
          )

              // RadialGradient(
              //     colors: [Colors.red, Colors.green, Colors.blue],
              //     center: Alignment(-.7, -.7),
              //     focal: Alignment(-.4, -.4),
              //     focalRadius: .1,
              //     radius: .1),

              // LinearGradient(
              //     colors: [Colors.green, Colors.red, Colors.green, Colors.blue],
              //     begin: Alignment.bottomLeft,
              //     end: Alignment.topRight,
              //     stops: [0.2, .9, .5, .7],
              //     ),
              // color: Colors.amber
              ),
        ),
      ),
    );
  }
}
