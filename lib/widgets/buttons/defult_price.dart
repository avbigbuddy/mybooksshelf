import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefultPrice extends StatefulWidget {
  final String month;
  final String text;
  final String price;
  final String textprice;
  final String discount;

  const DefultPrice({
    super.key,
    required this.month,
    required this.text,
    required this.price,
    required this.textprice,
    required this.discount,
  });

  @override
  State<DefultPrice> createState() => _DefultPriceState();
}

class _DefultPriceState extends State<DefultPrice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(0, 0, 0, 0),
            blurRadius: 20.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              0.0, // Move to right 5  horizontally
              0.0, // Move to bottom 5 Vertically
            ),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 12),
            child: Text(
              widget.month,
              style: GoogleFonts.inter(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 12),
            child: Text(
              widget.text,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 12),
                child: Text(
                  "Price: ₹",
                  style: GoogleFonts.inter(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 2),
                child: Text(
                  widget.price,
                  style: GoogleFonts.inter(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 18),
                child: Text(
                  "off:",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                ),
                child: Text(
                  widget.discount,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
