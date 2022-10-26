import 'package:flutter/material.dart';
import 'variables.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardContent extends StatelessWidget {

  final IconData ic;
  final Color iconColor;
  final String text;
  final Color textColor;

  const CardContent(this.ic, this.iconColor, this.text, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: fcicon - 9, child: const SizedBox()),
        Expanded(
          flex: fcicon + 20,
          child: FittedBox(
            child: Icon(
              ic,
              color: iconColor,
            ),
          ),
        ),
        Expanded(flex: fcicon - 9, child: const SizedBox()),
        Expanded(
          flex: fcicon - 9,
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
        Expanded(flex: fcicon - 9, child: const SizedBox()),
      ],
    );
  }
}
