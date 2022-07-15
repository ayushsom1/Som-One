import 'package:ayush_som/about.dart';
import 'package:ayush_som/home.dart';
import 'package:ayush_som/project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Soho",
    ),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => const MyHome(),
      'about': ((context) => const MyAbout()),
      'project': ((context) => const MyProjects())
    },
  ));
}
