import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/home_screen.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF1E88E5), // A vibrant blue for highlights.
  scaffoldBackgroundColor:
      Color(0xFF121212), // Slightly lighter dark for contrast.
  cardColor: Color(0xFF1E1E1E), // Matching card background.
  dividerColor: Color(0xFF2C2C2C), // Subtle divider lines.
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    elevation: 0,
    titleTextStyle: GoogleFonts.openSans(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  iconTheme: IconThemeData(
    color: Colors.grey.shade400,
  ),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.openSans(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    displayLarge: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.lato(
      fontSize: 16,
      color: const Color.fromARGB(255, 255, 255, 255),
    ),
    bodyMedium: GoogleFonts.lato(
      fontSize: 14,
      color: Colors.grey.shade400,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Color(0xFF1E88E5), // Same as primaryColor for consistency.
    textTheme: ButtonTextTheme.primary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF1E88E5),
    foregroundColor: Colors.white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF2C2C2C),
    hintStyle: TextStyle(color: Colors.grey.shade500),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade600),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.grey.shade600),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xFF1E88E5)),
    ),
  ),
);

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: HomeScreen(),
    );
  }
}
