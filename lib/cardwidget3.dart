import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class artikel extends StatefulWidget {
  const artikel({Key? key}) : super(key: key);

  @override
  State<artikel> createState() => _artikelState();
}

class _artikelState extends State<artikel> {
  String judul = 'Moms Hati-Hati, Jangan Lakukan ini kepada Si Kecil!';
  String deskripsi = 'Lorem ipsum dolor sit amet, consectetur adipiscin...';
  String nama = 'Yuvan Farid Aziz';
  String image = 'assets/artikel.png';
  String schedule = '2 Weeks ago';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: 'DDDDDD'.toColor(), width: 1),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.only(left: 14, right: 14, top: 14, bottom: 14),
            width: MediaQuery.of(context).size.width,
            height: 104,
            child: Row(children: [
              Container(
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(image),
                    )),
              ),
              SizedBox(width: 14),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width:
                      MediaQuery.of(context).size.width - 14 - 70 - 14 - 14 - 2,
                  child: Text(
                    judul,
                    maxLines: 2,
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 3),
                Container(
                  width:
                      MediaQuery.of(context).size.width - 14 - 70 - 15 - 14 - 2,
                  child: Text(
                    deskripsi,
                    maxLines: 1,
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
                          fontSize: 10,
                          color: '919191'.toColor()),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: SvgPicture.asset('assets/point.svg'),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: Text(
                      schedule,
                      style: GoogleFonts.poppins().copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 10,
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
