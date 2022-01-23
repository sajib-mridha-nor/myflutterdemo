import 'package:flutter/material.dart';
import 'package:myflutterdemo/ab2001d3.dart';
// import 'package:myflutterdemo/home.dart';
import './home.dart';


void main(List<String> args) {
  runApp(Myhome());
}
class Myhome extends StatelessWidget {
  const Myhome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Day3(),);
  }
}