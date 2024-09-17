import 'package:flutter/material.dart';

const darkColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFF9F4F5),
    onPrimary: Color(0xFFF9F4F5),
    secondary: Color(0xFFF9F4F5),
    onSecondary: Color(0xFFF9F4F5),
    error: Color(0xFFF9F4F5),
    onError: Colors.red,
    surface: Color(0xff41436A),
    onSurface: Color(0xff41436A));

const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    
    primary: Color(0xFF4D685A),
    onPrimary: Color(0xFF4D685A),
    // 0xFF4D685A
    secondary: Color(0xFF546D64),
    onSecondary: Color(0xFF546D64),
    error: Color(0xFF546D64),
    onError: Colors.red,
    surface: Color(0xff41436A),
    onSurface: Color(0xff41436A));

ThemeData lightMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: lightColorScheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            elevation: WidgetStateProperty.all<double>(5.0),
            padding: WidgetStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 18)),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))))));

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);
