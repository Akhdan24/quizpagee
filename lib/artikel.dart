import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class listartikel extends StatelessWidget {
  final String? judul;
  final String? nama;
  final String? schedule;

  listartikel({this.judul, this.nama, this.schedule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                      width: 147,
                      height: 86,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child:
                          Image.asset('assets/makanan.png', fit: BoxFit.fill)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 147,
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    child: Text(judul ?? '',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Text(nama ?? '',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
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
                            schedule ?? '',
                            style: GoogleFonts.poppins().copyWith(
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                                color: '919191'.toColor()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
