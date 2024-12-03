

import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
   colorScheme: const ColorScheme.light(
    surface: Colors.white,
    primary: Color.fromARGB(255, 45, 158, 49),
    secondary: Color.fromARGB(255, 235, 235, 235),
     onSecondary: Color.fromARGB(255, 88, 88, 88),
    tertiary:  Color.fromARGB(255, 249, 249, 249),
  )
);



ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
   colorScheme: const ColorScheme.dark(
    surface:  Color.fromARGB(255, 13, 13, 13),
    primary: Color.fromARGB(255, 22, 22, 24),
    secondary: Color.fromARGB(255, 239, 91, 33),
     onSecondary: Color.fromARGB(255, 88, 88, 88),
    tertiary:  Color.fromARGB(255, 249, 249, 249),
  )
);