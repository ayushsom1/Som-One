// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  myProfile(lang, title, desc, url) {
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
                  // Text(
                  //   star,
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     color: Colors.white,
                  //   ),
                  // ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {
                        launchUrl(url);
                      },
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
            myProfile(
              'FLUTTER',
              'SomOne',
              '- A Portfolio App',
              'https://github.com/ayushsom1/ayush_som',
            ),
            myProfile(
              'REACT',
              "ADHYAAY'21",
              '- Website of HBTU, Kanpur annual cultural fest',
              'https://www.adhyaay.co.in/',
            ),
            myProfile(
              'FLUTTER',
              'Crypto_Wallet',
              '- A fake crypto wallet which uses API to fetch data of current rates of cryptos',
              'https://github.com/ayushsom1/crypto_wallet',
            ),
            myProfile(
              'ANGULAR-JS',
              'To-Do',
              '- A Basic To-Do App',
              'https://github.com/ayushsom1/TODO-list-app',
            ),
          ],
        ),
      )),
    );
  }
}
