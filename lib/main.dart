import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seai/general/welcome.dart';
import 'package:seai/helpers/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kPrimaryColor,
          secondary: kPrimaryColor,
        ),
        textTheme: GoogleFonts.nunitoSansTextTheme(Theme.of(context).textTheme),
      ),
      home: const WelcomeScreen(),
    );
  }
}
