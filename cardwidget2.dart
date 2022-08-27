import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class cardwidget2 extends StatefulWidget {
  @override
  State<cardwidget2> createState() => _cardwidget2State();
}

class _cardwidget2State extends State<cardwidget2> {
  String makanan = 'Kue Strawberry';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  offset: const Offset(1, 1),
                  color: Colors.grey.shade300,
                ),
                BoxShadow(
                  blurRadius: 1,
                  offset: const Offset(-1, 1),
                  color: Colors.grey.shade300,
                ),
                BoxShadow(
                  blurRadius: 1,
                  offset: const Offset(1, 0),
                  color: Colors.grey.shade300,
                ),
              ],
              color: Colors.white,
              // border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 115,
            height: 105,
            padding: EdgeInsets.all(7),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 100,
                height: 65,
                child: Image.asset('assets/makanan.png'),
              ),
              SizedBox(height: 6),
              Container(
                child: Text(makanan,
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
