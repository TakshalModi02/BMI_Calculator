import 'package:flutter/material.dart';
import '_input_page.dart';

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

        //Both this two is not working.. I want to make theme having color of App bar and body with Hexcode #0A0D22

        // colorScheme: ColorScheme.dark(primary: Colors.red),
        // primaryColor: Colors.red,

        backgroundColor: const Color(0xFF0A0D22),
      ),
      home: const InputPage(),
    );
  }
}
