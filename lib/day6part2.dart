import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'day5.dart';
import 'day6.dart';
import 'home.dart';

class PageViewDemo extends StatelessWidget {
  var page = [
    ResponsibeUI(),
    MyTextField(),
    Home(),
    Container(
      color: Colors.purple,
    )
  ];
  final PageController controler = PageController();

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
        initialPage: 2,
        

        //  disableUserGesture: true,
        // enableLoop: false,
        waveType: WaveType.liquidReveal,
        fullTransitionValue: 90,
        positionSlideIcon: .5,
        slideIconWidget: Icon(
          Icons.arrow_forward,
        ),
        pages: page);

    // Scaffold(
    //   // appBar: AppBar(),
    //   body:

    //  PageView(
    //     onPageChanged: (t) {},
    //     controller: controler,
    //     pageSnapping: true,
    //     scrollDirection: Axis.horizontal,
    //     reverse: true,
    //     padEnds: true,
    //     clipBehavior: Clip.hardEdge,

    //     // physics: NeverScrollableScrollPhysics(),
    //     children: page),
//     );
  }
}
class SF extends StatefulWidget {
  const SF({ Key? key }) : super(key: key);

  @override
  _SFState createState() => _SFState();
}

class _SFState extends State<SF> {


  @override
  Widget build(BuildContext context) {
    return SL();
  }
}

class SL extends StatelessWidget {
  const SL({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SF();
  }
}