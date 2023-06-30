import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mybookshelf/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _mycontroller;
  late Animation<Offset> _myoffsetAnimation;
  late AnimationController _bookscontroller;
  late Animation<Offset> _booksoffsetAnimation;
  late AnimationController _shelfcontroller;
  late Animation<Offset> _shelfoffsetAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mycontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();

    _myoffsetAnimation = Tween<Offset>(
      begin: const Offset(-3.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _mycontroller, curve: Curves.elasticIn));

    _shelfcontroller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();

    _shelfoffsetAnimation = Tween<Offset>(
      begin: const Offset(3.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _shelfcontroller, curve: Curves.elasticIn));

    _bookscontroller =  AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();

          _booksoffsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, -10),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _shelfcontroller, curve: Curves.elasticIn));
    Timer(const Duration(seconds: 4), (){
       Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context) => const login()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 232),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 235, 234, 232),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _myoffsetAnimation,
                  child: Text(
                    "My",
                    style: GoogleFonts.montserrat(
                        fontSize: 40, color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SlideTransition(
                  position: _booksoffsetAnimation,
                  child: Text(
                    "Book's",
                    style:
                        GoogleFonts.montserrat(fontSize: 40, color: Colors.red),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SlideTransition(
                  position: _shelfoffsetAnimation,
                  child: Text(
                    "Shelf",
                    style:
                        GoogleFonts.montserrat(fontSize: 40, color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 40,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 235, 234, 232),
        ),
        child: Center(
          child: Text(
            "© Copyright 2023 AV BIGBUDDY. All Rights Reserved",
            style: GoogleFonts.montserrat(color: Colors.black),
          ),
        ),
      ),
    );
  }
  void next(){
    
  }
}
