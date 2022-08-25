import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class donesubmit extends StatefulWidget {
  const donesubmit({Key? key}) : super(key: key);

  @override
  State<donesubmit> createState() => _donesubmitState();
}

class _donesubmitState extends State<donesubmit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 20),
        width: MediaQuery.of(context).size.width,
        color: 'F8DA89'.toColor(),
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: SvgPicture.asset(
                'assets/bcg_curve.svg',
              ),
            ),
            Column(children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text(
                  'Berhasil Mengikuti Kuis',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 70),
              Container(
                height: 110,
                child: Positioned(
                  child: Image(
                    image: AssetImage("assets/succes.png"),
                  ),
                ),
              ),
              SizedBox(height: 47),
              Container(
                child: Text(
                  'Berhasil Mengirimkan Jawaban',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: 'B47E3E'.toColor()),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 298,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          'Selamat kamu telah mengikuti kuis tebak member NCT, silahkan tunggu pengumuman pemenang selanjutnya',
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: 'B47E3E'.toColor()),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: 'D79950'.toColor(),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Kembali ke Home',
                            style: GoogleFonts.poppins().copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
