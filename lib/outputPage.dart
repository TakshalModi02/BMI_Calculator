import 'package:flutter/material.dart';
import 'variables.dart';

class SecondPage extends StatefulWidget {

  const SecondPage(this.result, this.bmi, this.interpretation, {super.key});
  final String result;
  final String bmi;
  final String interpretation;

  @override
  State<SecondPage> createState() => _SecondPageState(result, bmi, interpretation);
}

class _SecondPageState extends State<SecondPage> {

  _SecondPageState(this.result, this.bmi, this.interpretation);
  final String result;
  final String bmi;
  final String interpretation;

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
                            width: double.infinity,
                            color: active_card_color,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(child: Text(result, style: TextStyle(color: Colors.green, fontSize: 20),),),
                                Container(child: Text(bmi, style: TextStyle(color: Colors.white, fontSize: 80, fontWeight: FontWeight.w900),),),
                                Container(child: Center(child: Text(interpretation, style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)),margin: EdgeInsets.all(37))
                              ],
                            ),
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
