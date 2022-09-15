import 'package:disenos2/src/pages/animaciones_page.dart';
import 'package:disenos2/src/pages/circular_progress_page.dart';
import 'package:disenos2/src/pages/emergency_page.dart';
import 'package:disenos2/src/pages/header_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: EmergencyPage()
    );
  }
}