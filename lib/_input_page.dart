import 'package:bmi_calculator/card_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'variables.dart';
import 'card.dart';
import 'outputPage.dart';
import 'brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender {
  male,
  female,
  none,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;
  int height = 180;
  int weight = 70;
  int age = 19;

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
            Expanded(flex: fcsb + 1, child: const SizedBox()),
            Expanded(
              flex: fc_card,
              child: Row(
                children: [
                  Expanded(flex: frsb, child: const SizedBox()),
                  Expanded(
                    flex: fr_card,
                    child: InputCard(
                      c: selectedGender == Gender.male
                          ? active_card_color
                          : inactive_card_color,
                      content: CardContent(FontAwesomeIcons.mars, icon_color,
                          "MALE", card_text_color),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(flex: frsb, child: const SizedBox()),
                  Expanded(
                    flex: fr_card,
                    child: InputCard(
                      c: selectedGender == Gender.female
                          ? active_card_color
                          : inactive_card_color,
                      content: CardContent(FontAwesomeIcons.venus, icon_color,
                          "FEMALE", card_text_color),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                  Expanded(flex: frsb, child: const SizedBox()),
                ],
              ),
            ),
            Expanded(flex: fcsb, child: const SizedBox()),
            Expanded(
              flex: fc_card,
              child: Row(
                children: [
                  Expanded(flex: frsb, child: const SizedBox()),
                  Expanded(
                    flex: 2 * (fr_card),
                    child: InputCard(
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(flex:8,child: SizedBox()),
                          Expanded(
                            flex: 15,
                            child: FittedBox(
                              child: Text(
                                "HEIGHT",
                                style: TextStyle(color: card_text_color),
                              ),
                            ),
                          ),
                          Expanded(flex: 8, child: SizedBox()),
                          Expanded(
                            flex: 40,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Expanded(flex:9 ,child: SizedBox()),
                                Expanded(
                                  flex:14,
                                  child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      height.toString(),
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: FittedBox(
                                    alignment: Alignment.bottomLeft,
                                    child: Text("cm",
                                        style: TextStyle(color: card_text_color, fontSize: 20)),
                                  ),
                                ),
                                Expanded(flex:10 ,child: SizedBox()),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 40,
                            child: SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                inactiveTrackColor: card_text_color,
                                activeTrackColor: Colors.white,
                                thumbColor: bottom_bar_color,
                                overlayColor: Color(0x26EB1555),
                                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                              ),
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  // inactiveColor: card_text_color,
                                  // activeColor: bottom_bar_color,
                                  onChanged: (double newHeight) {
                                    setState(() {
                                      height = newHeight.toInt();
                                    });
                                  }),
                            ),
                          ),
                          Expanded(flex:5,child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: frsb, child: const SizedBox()),
                ],
              ),
            ),
            Expanded(flex: fcsb, child: const SizedBox()),
            Expanded(
              flex: fc_card,
              child: Row(
                children: [
                  Expanded(flex: frsb, child: const SizedBox()),
                  Expanded(
                    flex: fr_card,
                    child: InputCard(
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(child: Text("WEIGHT", style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98),),),),
                          Container(child: Text(weight.toString(),style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,),),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ActionButton(FontAwesomeIcons.minus, () {setState(() {

                                weight--;
                              });}),
                              SizedBox(width: 10,),
                              ActionButton(FontAwesomeIcons.plus, () {setState(() {
                                weight++;
                              });})
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: frsb, child: const SizedBox()),
                  Expanded(
                    flex: fr_card,
                    child: InputCard(
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(child: Text("AGE", style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98),),),),
                          Container(child: Text(age.toString(),style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900,),),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ActionButton(FontAwesomeIcons.minus, () {setState(() {
                                age--;
                              });}),
                              SizedBox(width: 10,),
                              ActionButton(FontAwesomeIcons.plus, () {setState(() {
                                age++;
                              });})
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: frsb, child: const SizedBox()),
                ],
              ),
            ),
            Expanded(flex: fcsb + 1, child: const SizedBox()),
            Expanded(
              flex: (fc_card ~/ 2) - 1,
              child: GestureDetector(
                onTap: () {
                  Brain brain = Brain(weight, height);
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SecondPage(brain.getResult(), brain.calculateBMI(), brain.getInterpretation())));
                },
                  child: Container(
                    color: bottom_bar_color,
                    child: const Center(
                      child: Text(
                        "CALCULATE YOUR BMI",
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

class ActionButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPress;

  const ActionButton(this.icon, this.onPress, {super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF0A0D22),
      constraints: const BoxConstraints.tightFor(height: 56, width: 56),
      child: Icon(icon, color: Colors.white,),
    );
  }
}