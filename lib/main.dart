import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'pages/home.dart';

void main (){
  runApp(instaapp());
}

class instaapp extends StatefulWidget {
  const instaapp({super.key});

  @override
  State<instaapp> createState() => _instaappState();
}

class _instaappState extends State<instaapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),

    );



  }
}

