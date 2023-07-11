import 'package:flutter/material.dart';
import 'package:meal_monkey/core/logic/helper_methods.dart';

import 'views/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Monkey',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: buildMaterialColor(const Color(0xffFC6011)),
          hintColor: Color(0xffB6B7B7),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Color(0xff4A4B4D))
          ),
          appBarTheme: AppBarTheme(backgroundColor: Colors.transparent, elevation: 0, centerTitle: false, titleTextStyle: TextStyle(color: Color(0xff4A4B4D), fontSize: 20, fontWeight: FontWeight.w700))),
      home: HomeView(),
    );
  }
}
