import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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

            const Expanded(flex: 1, child: SizedBox()),

            Expanded(
              flex: 10,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                  Expanded(
                    flex: 10,
                    child: Card(),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                  Expanded(
                    flex: 10,
                    child: Card(),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                ],
              ),
            ),

            const Expanded(flex: 1, child: SizedBox()),

            Expanded(
              flex: 10,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                  Expanded(
                    flex: 20,
                    child: Card(),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                ],
              ),
            ),

            const Expanded(flex: 1, child: SizedBox()),

            Expanded(
              flex: 10,
              child: Row(
                children: const [
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                  Expanded(
                    flex: 10,
                    child: Card(c: Color(0xFF1D1F33),)
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                  Expanded(
                    flex: 10,
                    child: Card(),
                  ),
                  Expanded(
                      flex: 1,
                      child: SizedBox()
                  ),
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            
            Expanded(
              flex: 5,
              child: Container(
                color: const Color(0xFFEB1555),
                child: const Center(
                  child: Text(
                    "CALCULATE YOUR BMI",
                    style: TextStyle(fontSize: 20,),
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

class Card extends StatelessWidget {

  final Color c;

  const Card({super.key, this.c = const Color(0xFF1D1F33),});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: c,
      ),
    );
  }
}

