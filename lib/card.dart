import 'dart:ffi';

import 'package:flutter/material.dart';
import 'variables.dart';

class InputCard extends StatelessWidget {

  final Color c;
  final Widget content;
  final VoidCallback onPress;

  const InputCard({super.key, this.c = active_card_color, this.content = const SizedBox(height: double.infinity,width: double.infinity,), this.onPress = op});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: c,
        ),
        child: content,
      ),
    );
  }
}

void op (){}
