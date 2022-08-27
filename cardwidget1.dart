import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class cardwidget1 extends StatefulWidget {

  @override
  State<cardwidget1> createState() => _cardwidget1State();
}

class _cardwidget1State extends State<cardwidget1> {
  String image1 = 'assets/dokter.png';
  String image2 = 'assets/resep.png';
  String image3 = 'assets/artiker.png';
  String nama = 'Dr. Joko Rasulio Nasution';
  String profesi = 'Dokter Umum';
  String biaya = 'Gratis';
  String harga = 'Rp15000';
  // final int harga = 15000;

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
            width: 225,
            height: 80,
            padding: EdgeInsets.all(7),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    child: Image.asset('assets/dokter.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nama,
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(height: 0),
                        Text(profesi,
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: '959595'.toColor())),
                        SizedBox(height: 5),
                        Container(
                          width: 141,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(biaya,
                                            style: GoogleFonts.poppins().copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: '45AB9C'.toColor())),
                                      ),
                                      Container(
                                        child: Text(harga,
                                            style: GoogleFonts.poppins().copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                color: 'C7C7C7'.toColor())),
                                      ),
                                    ]),
                                Container(
                                    width: 78,
                                    height: 20,
                                    child: FlatButton(
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
