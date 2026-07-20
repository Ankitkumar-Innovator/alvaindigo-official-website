import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'presentation/landing_page.dart';

void main() {
  runApp(const AlvaIndigoApp());
}

class AlvaIndigoApp extends StatelessWidget {
  const AlvaIndigoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlvaIndigo - Innovate, Build, Inspire.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const LandingPage(),
    );
  }
}
