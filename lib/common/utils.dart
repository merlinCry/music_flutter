
import 'package:flutter/material.dart';

Map<int, Color> color =
{
  50: const Color.fromRGBO(221,0,27, .1),
  100: const Color.fromRGBO(221,0,27, .2),
  200: const Color.fromRGBO(221,0,27, .3),
  300: const Color.fromRGBO(221,0,27, .4),
  400: const Color.fromRGBO(221,0,27, .5),
  500: const Color.fromRGBO(221,0,27, .6),
  600: const Color.fromRGBO(221,0,27, .7),
  700: const Color.fromRGBO(221,0,27, .8),
  800: const Color.fromRGBO(221,0,27, .9),
  900: const Color.fromRGBO(221,0,27, 1),
};

MaterialColor materialMainColor = MaterialColor(0xFFDD001B, color);
Color mainColor = const Color.fromRGBO(221,0,27, 1);

class APoint {
   int x;
   int y;
   APoint(this.x,this.y);
   factory APoint.fromJson(String dta) {
     return APoint(1,2);
   }
}