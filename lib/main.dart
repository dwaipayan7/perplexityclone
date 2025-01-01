import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexityclone/pages/home_page.dart';
import 'package:perplexityclone/theme/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perplexity Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.dark().textTheme
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

