import 'package:flutter/material.dart';
import 'variables.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Row(
                children: [
                  const Expanded(flex:1, child: SizedBox()),
                  Expanded(
                    flex: 15,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text("Your Result", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 40),),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 15,
                          child: Container(
                            color: active_card_color,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(flex:1, child: SizedBox()),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: bottom_bar_color,
                  child: const Center(
                    child: Text(
                      "RE-CALCULATE YOUR BMI",
                      style: TextStyle(
                        fontSize: bottom_bar_text,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
