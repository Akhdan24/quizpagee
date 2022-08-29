import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:supercharged/supercharged.dart';
import 'donesubmit.dart';

class quizpage extends StatefulWidget {
  @override
  State<quizpage> createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  final TextEditingController jawaban = TextEditingController();
  final TextEditingController instagram = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: 'F8C589'.toColor(),
          child: SafeArea(
            child: SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  color: 'F8C589'.toColor(),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.arrow_back_outlined,
                                  size: 16, color: Colors.white),
                              SizedBox(width: 15),
                              Container(
                                child: Text('Tebak K-pop',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ]),
                        Container(
                          child: GestureDetector(
                            onTap: () async {
                              await Share.share('Share this Text',
                                  subject: 'any subject if you have');
                            },
                            child: Icon(Icons.share_outlined,
                                size: 20, color: Colors.white),
                          ),
                        ),
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 575,
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
                            width: 328,
                            child: Positioned(
                              top: 0,
                              child: Image(
                                image: AssetImage("assets/g.png"),
                              ),
                            ),
                          ),
                          Container(
                            height: 238,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 13, bottom: 20),
                              child: Column(children: [
                                Row(children: [
                                  Container(
                                    width: 50,
                                    child: Image(
                                        image: AssetImage('assets/f.png')),
                                  ),
                                  SizedBox(width: 13),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 227,
                                          child: Text(
                                            'Hadiah menarik menunggu kamu~',
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 11,
                                                    color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          width: 227,
                                          child: Text(
                                            'Pengguna baru, setia & lama nggak belanja bisa dapat hadiah yang menarik juga loh.',
                                            maxLines: 2,
                                            style: GoogleFonts.poppins()
                                                .copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 9,
                                                    color: Colors.white),
                                          ),
                                        ),
                                      ]),
                                ]),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  height: 35,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '737373'.toColor()),
                                      hintText:
                                          'Siapakah dia? Isi nama, contoh: Karta',
                                      contentPadding:
                                          EdgeInsets.only(left: 10, bottom: 17),
                                    ),
                                    controller: jawaban,
                                  ),
                                ),
                                SizedBox(height: 15),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  height: 35,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText:
                                          'Akun Instagram anda, contoh: @Kartagram',
                                      hintStyle: GoogleFonts.poppins().copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10,
                                          color: '737373'.toColor()),
                                      contentPadding:
                                          EdgeInsets.only(left: 10, bottom: 17),
                                      border: InputBorder.none,
                                    ),
                                    controller: instagram,
                                  ),
                                ),
                                SizedBox(height: 15),
                                GestureDetector(
                                  onTap: () {
                                    if (jawaban.text.isNotEmpty &&
                                        instagram.text.isNotEmpty) {
                                      Get.to(donesubmit());
                                    } else {
                                      Fluttertoast.showToast(
                                        msg:
                                            'Anda belum mengisi form yang tersedia',
                                        fontSize: 10,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        gravity: ToastGravity.BOTTOM,
                                      );
                                    }
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          'F5EB92'.toColor(),
                                          'D5C280'.toColor(),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      'Kirim Jawaban',
                                      style: GoogleFonts.poppins().copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ]),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      'CBA06D'.toColor(),
                                      'A48156'.toColor()
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  )),
                            ),
                          ),
                        ]),
                      ]),
                ),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
