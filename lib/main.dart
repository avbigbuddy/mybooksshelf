import 'package:flutter/material.dart';
import 'package:mybookshelf/Profile.dart';
import 'package:mybookshelf/login_page.dart';
import 'package:mybookshelf/splash.screen.dart';


// import 'package:libraryhide/category.dart';
// import 'package:libraryhide/singup.dart';
// import 'package:libhide/login_page.dart';
// import 'package:libhide/needsub.dart';

void main() {
  runApp(const Library());
}

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
