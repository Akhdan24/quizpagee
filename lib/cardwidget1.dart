import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class dokter extends StatefulWidget {
  @override
  State<dokter> createState() => _dokterState();
}

class _dokterState extends State<dokter> {
  String image1 = 'assets/dokter.png';
  String nama = 'Dr. Joko Rasulio Nasution';
  String profesi = 'Dokter Umum';
  String biaya = 'Gratis';
  int harga = 15000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: 'DDDDDD'.toColor()),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 227,
            height: 80,
            padding: EdgeInsets.only(top: 9, left: 7),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(image1),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 140,
                          child: Text(nama,
                              maxLines: 1,
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                        ),
                        Container(
                          width: 140,
                          child: Text(profesi,
                              style: GoogleFonts.poppins().copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: '959595'.toColor())),
                        ),
                        SizedBox(height: 3),
                        Container(
                          width: 141,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 12,
                                        child: Text(biaya,
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: '45AB9C'.toColor())),
                                      ),
                                      SizedBox(height: 1),
                                      Container(
                                        height: 13,
                                        child: Text(
                                            NumberFormat.currency(
                                                    locale: 'id',
                                                    symbol: 'Rp',
                                                    decimalDigits: 0)
                                                .format(harga),
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w300,
                                                    color: 'C7C7C7'.toColor())),
                                      ),
                                    ]),
                                Container(
                                    width: 57,
                                    height: 20,
                                    child: FlatButton(
                                        padding: EdgeInsets.zero,
                                        color: 'FF6969'.toColor(),
                                        onPressed: () {},
                                        child: Text('Konsultasi',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white)))),
                              ]),
                        ),
                      ]),
                ]),
          ),
        ),
      ),
    );
  }
}
