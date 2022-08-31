import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class jadwal extends StatefulWidget {
  final String? tanggal;

  jadwal({this.tanggal});

  @override
  State<jadwal> createState() => _jadwalState();
}

class _jadwalState extends State<jadwal> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width - 15 - 15,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: 'F2F2F2'.toColor(),
                  // border: Border.all(width: 1, color: 'F2F2F2'.toColor()),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                              widget.tanggal ?? '',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.only(
                                left: 7, top: 1, right: 7, bottom: 1),
                            decoration: BoxDecoration(
                              color: '94CF79'.toColor(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              'Hari ini',
                              style: GoogleFonts.poppins().copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 7,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          show = !show;
                        });
                      },
                      child: (show == true)
                          ? Icon(Icons.expand_less_outlined,
                              color: Colors.black)
                          : Icon(Icons.expand_more_outlined,
                              color: Colors.black),
                    ),
                  ],
                ),
              ),
              (show == true)
                  ? Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: 'F2F2F2'.toColor()),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5)),
                      ),
                      height: 70,
                      // width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        // spacing: 5,
                        runSpacing: 10,
                        direction: Axis.horizontal,
                        children: [
                          Container(
                            width: 70,
                            height: 20,
                            padding: EdgeInsets.only(
                                left: 9, right: 7, top: 3, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: '959595'.toColor()),
                            ),
                            child: Text(
                              '08:00 - 10:00',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '959595'.toColor(),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 20,
                            padding: EdgeInsets.only(
                                left: 9, right: 7, top: 3, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: '959595'.toColor()),
                            ),
                            child: Text(
                              '10:00 - 12:00',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '959595'.toColor(),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 20,
                            padding: EdgeInsets.only(
                                left: 9, right: 7, top: 3, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: '959595'.toColor()),
                            ),
                            child: Text(
                              '12:00 - 14:00',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '959595'.toColor(),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 70,
                            height: 20,
                            padding: EdgeInsets.only(
                                left: 9, right: 7, top: 3, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: '959595'.toColor()),
                            ),
                            child: Text(
                              '14:00 - 16:00',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                color: '959595'.toColor(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
