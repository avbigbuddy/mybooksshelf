import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DefultButton extends StatefulWidget {
  final String text;
  Function? logic;
  DefultButton({super.key, required this.text, required this.logic});

  @override
  State<DefultButton> createState() => _DefultButtonState();
}

class _DefultButtonState extends State<DefultButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 58, right: 58),
      child: GestureDetector(
        onTap: () {
          if (widget.logic != null) {
            widget.logic!();
          }
        },
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: GoogleFonts.inter(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
