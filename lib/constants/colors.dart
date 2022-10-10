import 'package:flutter/material.dart';
import 'dart:ui';

class DoubleShade {
  final Color lightShade;
  final Color darkShade;

  DoubleShade(this.lightShade, this.darkShade);
}

const Color backgroundColor = Color(0xffffffff);
const Color greenColor = Colors.greenAccent;
const Color yellowColor = Colors.yellow;
const Color redColor = Colors.red;
DoubleShade greengradient = DoubleShade(Color(0xFF5CE27F), Color(0xFF5CABE2));
DoubleShade blackColor = DoubleShade(Color(0xFF313131), Color(0xFF121212));
DoubleShade grayColor = DoubleShade(Color(0xFF818181), Color(0xFFEFEFEF));
