import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class cardwidget3 extends StatefulWidget {
  const cardwidget3({Key? key}) : super(key: key);

  @override
  State<cardwidget3> createState() => _cardwidget3State();
}

class _cardwidget3State extends State<cardwidget3> {
  String judul = 'Moms Hati-Hati, Jangan Lakukan ini kepada Si Kecil!';
  String deskripsi = 'Lorem ipsum dolor sit amet, consectetur';
  String nama = 'Yufan Farid Aziz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
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
            padding: EdgeInsets.all(15),
            width: 356,
            height: 100,
            child: Row(children: [
              Container(
                width: 70,
                child: Image.asset('assets/artikel.png'),
              ),
              SizedBox(width: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 241,
                  child: Text(
                    judul,
                    maxLines: 2,
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  child: Text(
                    deskripsi,
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: '6C6C6C'.toColor()),
                  ),
                ),
                SizedBox(height: 9),
                Row(children: [
                  Container(
                    child: Text(
                      nama,
                      style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 9,
                          color: '919191'.toColor()),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Text('|', style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 9,
                        color: '919191'.toColor()),),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Text(
                      '2 Weeks ago',
                      style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 9,
                          color: '919191'.toColor()),
                    ),
                  ),
                ]),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
