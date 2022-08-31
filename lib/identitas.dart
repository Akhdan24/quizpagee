import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

class identitas extends StatelessWidget {
  final String? str;
  final String? praktik;
  final String? alumnus;

  identitas({this.str, this.praktik, this.alumnus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: 'E8E8E8'.toColor(), width: 1),
          ),
          height: 53,
          width: MediaQuery.of(context).size.width - 12 - 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 11, left: 12, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 12, child: Image.asset('assets/str.png')),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  'Nomor STR',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 2),
                              Container(
                                child: Text(
                                  str ?? '',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '929292'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(width: 32),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 11, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 12,
                              child: Image.asset('assets/praktik.png')),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Praktik',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 2),
                              Container(
                                child: Text(
                                  praktik ?? '',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '929292'.toColor()),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(width: 3),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 11, right: 12, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 12,
                              child: Image.asset('assets/alumnus.png')),
                          SizedBox(width: 5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Alumnus',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 2),
                              Container(
                                child: Text(
                                  alumnus ?? '',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 9,
                                      color: '929292'.toColor()),
                                ),
                              ),
                            ],
                          ),
                          // Container(
                          //     width: 12, child: Image.asset('assets/praktik.png')),
                          // SizedBox(width: 5),
                          // Column( crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //       child: Text(
                          //         'Praktik',
                          //         style: GoogleFonts.poppins().copyWith(
                          //             fontSize: 10,
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.black),
                          //       ),
                          //     ),
                          //     SizedBox(height: 2),
                          //     Container(
                          //       child: Text(
                          //         'Rs. Yadika',
                          //         style: GoogleFonts.poppins().copyWith(
                          //             fontWeight: FontWeight.w300,
                          //             fontSize: 9,
                          //             color: '929292'.toColor()),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(width: 53),
                          // Container(
                          //     width: 12, child: Image.asset('assets/praktik.png')),
                          // SizedBox(width: 5),
                          // Column( crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //       child: Text(
                          //         'Praktik',
                          //         style: GoogleFonts.poppins().copyWith(
                          //             fontSize: 10,
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.black),
                          //       ),
                          //     ),
                          //     SizedBox(height: 2),
                          //     Container(
                          //       child: Text(
                          //         'Rs. Yadika',
                          //         style: GoogleFonts.poppins().copyWith(
                          //             fontWeight: FontWeight.w300,
                          //             fontSize: 9,
                          //             color: '929292'.toColor()),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
