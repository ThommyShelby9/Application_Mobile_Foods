import 'dart:async';

import 'package:exoflutter/first_page.dart';
import 'package:flutter/material.dart';

class EnterApp extends StatefulWidget {
  const EnterApp({super.key});

  @override
  State<EnterApp> createState() => _EnterAppState();
}

class _EnterAppState extends State<EnterApp> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => FirstPage()),
        (route) => false,
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/360_F_374737839_VsxlmnN7soqOOOFFzy5kfE9H6PFMCkPX.jpg",
        width: size.width * .5,
          height: size.height / 2,
          fit: BoxFit.cover,),
      ),
    );
  }
}
