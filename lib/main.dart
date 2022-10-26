
import 'package:flutter/material.dart';
import '_input_page.dart';
import 'variables.dart';

void main() {
  runApp(const BMI_Calculator());
}

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        appBarTheme: AppBarTheme(color: ab_color, elevation: ab_elevation),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: fab_color),
        scaffoldBackgroundColor: bg_color,
        textTheme: TextTheme(bodyText1: TextStyle(color: text_color), bodyText2: TextStyle(color: text_color)),

      ),
      home: const InputPage(),
      // routes: {
      //   '/': InputPage();
      //   '/second_page':
      // },
    );
  }
}
