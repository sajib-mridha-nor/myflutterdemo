import 'package:flutter/material.dart';
import 'package:myflutterdemo/ab2001d3.dart';
import 'package:myflutterdemo/day5.dart';
import 'package:myflutterdemo/day6.dart';
import 'package:myflutterdemo/day6part2.dart';
import 'package:myflutterdemo/home.dart';

// import 'package:myflutterdemo/home.dart';

void main(List<String> args) {
  runApp(Myhome());
}

class Myhome extends StatelessWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageViewDemo(),
    );
  }
}
