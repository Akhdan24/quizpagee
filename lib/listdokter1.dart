import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class listdokter1 extends StatefulWidget {

  @override
  State<listdokter1> createState() => _listdokter1State();
}

class _listdokter1State extends State<listdokter1> {
  String image = 'assets/d.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 176,
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.loose,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  child: Image(
                    image: AssetImage(image),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    // image: DecorationImage(
                    //   image: CachedNetworkImageProvider(image),
                    // ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 50,
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 6, right: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: '47C15A'.toColor(),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
