import 'package:flutter/material.dart';
import 'package:video_call_app/ui/welcome_screen/welcome_screen.dart';
import 'package:video_call_app/infraStructure/theme/app_theme.dart';

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
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      home: const WelcomeScreen(),
    );
  }
}

