import 'package:flutter/material.dart';
import 'package:flutter_application_2/dropdownbuttonpage.dart';
import 'package:flutter_application_2/formwidgetpage.dart';
import 'package:flutter_application_2/listpage.dart';
import 'package:flutter_application_2/popupmenupage.dart';
import 'package:flutter_application_2/snackbardialogpage.dart';

import 'alertdialogpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListviewPage() ,
    );
  }
}