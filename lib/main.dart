import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:quizpage/quizpage.dart';

import 'cardwidget1.dart';
import 'cardwidget2.dart';
import 'cardwidget3.dart';
import 'listdokter1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: listdokter1(),
    );
  }
}
