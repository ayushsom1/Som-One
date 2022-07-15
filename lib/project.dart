// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myProfile(lang, title, desc, star) {
    return SizedBox(
      height: 215,
      width: MediaQuery.of(context).size.width * 0.98,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            myProfile('FLUTTER', 'SomOne', '- A Portfolio App', '10'),
            myProfile('FLUTTER', 'SomOne', '- A Portfolio App', '10'),
            myProfile('FLUTTER', 'SomOne', '- A Portfolio App', '10'),
            myProfile('FLUTTER', 'SomOne', '- A Portfolio App', '10'),
            myProfile('FLUTTER', 'SomOne', '- A Portfolio App', '10'),
            myProfile('FLUTTER', 'SomOne', '- A Portfolio App', '10'),
          ],
        ),
      )),
    );
  }
}
