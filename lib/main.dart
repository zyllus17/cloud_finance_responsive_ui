import 'package:cloud_finance_responsive_ui/constants/app_colors.dart';
import 'package:cloud_finance_responsive_ui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloud Finance UI',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: AppColors.black),
      ),
      home: const MainScreen(),
    );
  }
}
