import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:quizpage/quizpage.dart';

class draggable extends StatefulWidget {

  @override
  State<draggable> createState() => _draggableState();
}

class _draggableState extends State<draggable> {
  double _leftValue = 0;
  double _topValue = 0;
  double _rightValue = 0;
  double _bottomValue = 0;
  int _time = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          child: SafeArea(
            child: Stack(children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: _time),
                left: _leftValue,
                top: _topValue,
                child: GestureDetector(
                  onTap: () {
                    Get.to(quizpage());
                    setState(() {
                      _topValue = 0;
                      _leftValue = 0;
                    });
                  },
                  // onPanEnd: (details) {
                  //   _topValue = 10;
                  //   _leftValue = 10;
                  //   _time = 10;
                  // },
                  onPanUpdate: (details) => setState(
                    () {
                      _topValue += details.delta.dy;
                      _leftValue += details.delta.dx;
                      _time = 0;
                    },
                  ),
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
