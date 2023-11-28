import 'package:flutter/material.dart';

final themeData = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: const MaterialStatePropertyAll(0),
      backgroundColor: const MaterialStatePropertyAll(Colors.green),
      foregroundColor: const MaterialStatePropertyAll(Colors.white),
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      shape: MaterialStatePropertyAll(
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(8))),
    ),
  ),
);
