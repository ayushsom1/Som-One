// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchieve(number, type) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              number,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 5),
              child: Text(type),
            )
          ],
        )
      ],
    );
  }

  mySpec(icon, tech) {
    return SizedBox(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              tech,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = const BorderRadius.only(
      topLeft: Radius.circular(40.0),
      topRight: Radius.circular(40.0),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: TextButton(
                child: Text(
                  'Projects',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'project');
                },
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: TextButton(
                child: Text(
                  'About Me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'about');
                },
              ),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingUpPanel(
        panel: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  myAchieve('8', 'Project'),
                  myAchieve('5', 'Clients'),
                  // myAchieve('22', 'Messages'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Specialized In',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.react, 'ReactJs'),
                      mySpec(FontAwesomeIcons.node, 'NodeJs'),
                      mySpec(Icons.flutter_dash, 'Flutter'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.html5, 'HTML5'),
                      mySpec(FontAwesomeIcons.css3, 'CSS3'),
                      mySpec(FontAwesomeIcons.js, 'JavaScript'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySpec(FontAwesomeIcons.language, 'Hindi'),
                      mySpec(FontAwesomeIcons.language, 'English'),
                      mySpec(FontAwesomeIcons.language, 'German'),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent]).createShader(
                    Rect.fromLTRB(0, 0, bounds.width, bounds.height),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: (Image.asset(
                  'assets/aysh.png',
                  fit: BoxFit.contain,
                )),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.52, right: 10),
              child: Column(
                children: [
                  Text(
                    'Ayush Som',
                    style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        borderRadius: radius,
        minHeight: 315,
      ),
    );
  }
}
