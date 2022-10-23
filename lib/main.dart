import 'package:flutter/material.dart';
import '_input_page.dart';

void main() {
  runApp(const BMI_Calculator());
}

MaterialColor colorCustom = const MaterialColor(0xFF0A0D22, <int, Color>{0: Color(0xFF0A0D22)});

class BMI_Calculator extends StatelessWidget {
  const BMI_Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark().copyWith(primaryColor: Colors.red),
      theme: ThemeData(

        appBarTheme: const AppBarTheme(color: Color(0xFF0A0D22), elevation: 5),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Color(0xFFEB1555)),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
        textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white), bodyText2: TextStyle(color: Colors.white)),




        // primarySwatch: colorCustom,


        //Both this two is not working.. I want to make theme having color of App bar and body with Hexcode #0A0D22

        // colorScheme: ColorScheme.dark(primary: Colors.red),
        // primaryColor: Colors.red,

        backgroundColor: const Color(0xFF0A0D22),
      ),
      home: const InputPage(),
    );
  }
}
