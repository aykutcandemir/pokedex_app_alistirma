// ignore_for_file: prefer_const_constructors
// 

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/pages/home_pages.dart';
import 'package:pokedex_app/services/pokedex_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 914),
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex',
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.latoTextTheme()
        ),
        home: HomePage()
      ),
    );
  }
}
