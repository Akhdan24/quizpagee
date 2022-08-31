import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:supercharged/supercharged.dart';

class listdokter1 extends StatefulWidget {
  final String? image;
  final String? nama;
  final String? profesi;
  final String? biaya;
  final int? harga;

  listdokter1({this.image, this.nama, this.profesi, this.biaya, this.harga});

  @override
  State<listdokter1> createState() => _listdokter1State();
}

class _listdokter1State extends State<listdokter1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 150,
                      height: 102,
                      // clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                          image: CachedNetworkImageProvider(widget.image ?? ''),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      padding:
                          EdgeInsets.only(left: 8, top: 3, bottom: 3, right: 7),
                      width: 57,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                              color: '47C15A'.toColor(),
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Online',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                border: Border.all(color: 'DDDDDD'.toColor(), width: 1),
              ),
              padding: EdgeInsets.only(left: 8, top: 5, right: 8, bottom: 10),
              width: 150,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 8 - 8,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.nama ?? '',
                      maxLines: 1,
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 2),
                  Container(
                    width: MediaQuery.of(context).size.width - 8 - 8,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.profesi ?? '',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: '959595'.toColor(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              widget.biaya ?? '',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: '45AB9C'.toColor(),
                              ),
                            ),
                          ),
                          // SizedBox(height: 1),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              NumberFormat.currency(
                                      locale: 'id',
                                      symbol: 'Rp',
                                      decimalDigits: 0)
                                  .format(widget.harga ?? 0),
                              style: GoogleFonts.poppins().copyWith(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                color: 'C7C7C7'.toColor(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 65,
                        height: 25,
                        child: FlatButton(
                            padding: EdgeInsets.zero,
                            color: 'FF6969'.toColor(),
                            onPressed: () {},
                            child: Text('Konsultasi',
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white))),
                      ),
                    ],
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
