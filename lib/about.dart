// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 0, 0, 0),
                      Colors.transparent
                    ]).createShader(
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
                top: MediaQuery.of(context).size.height * 0.57, right: 10),
            child: Column(
              children: [
                Text(
                  'Hello, I am',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Ayush Som',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Software Developer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 120,
                  child: TextButton(
                    onPressed: () {
                      const url = 'https://www.linkedin.com/in/ayushsom/';
                      launchUrl(url);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.black,
                    ),
                    child: Text(
                      'Hire Me',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        const url = 'https://www.linkedin.com/in/ayushsom/';
                        launchUrl(url);
                      },
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const url = 'https://www.github.com/ayushsom1/';
                        launchUrl(url);
                      },
                      icon: Icon(
                        FontAwesomeIcons.githubSquare,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const url = 'https://www.instagram.com/its_awsom/';
                        launchUrl(url);
                      },
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const url = 'https://www.twitter.com/AyushSom6/';
                        launchUrl(url);
                      },
                      icon: Icon(
                        FontAwesomeIcons.twitterSquare,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        const url =
                            'https://www.facebook.com/ayush.rajput.37266136/';
                        launchUrl(url);
                      },
                      icon: Icon(
                        FontAwesomeIcons.facebookSquare,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
