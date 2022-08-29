import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class resep extends StatefulWidget {
  @override
  State<resep> createState() => _resepState();
}

class _resepState extends State<resep> {
  String item = 'Kue Strawberry';
  String image = 'assets/makanan.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: 'DDDDDD'.toColor()),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(image),
                  )
                ),
              ),
              SizedBox(height: 6),
              Container(
                width: 100,
                child: Text(item, maxLines: 1,
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
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
