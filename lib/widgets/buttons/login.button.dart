import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatefulWidget {
  final Function onPressed;
  const LoginButton({super.key, required this.onPressed});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: InkWell(
          onTap: () async {
            widget.onPressed();
          },
          child: Container(
            height: 61,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 23, 23, 23),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Log in",
                style:
                    GoogleFonts.montserrat(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
