import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_call_app/infraStructure/theme/app_theme.dart';
import 'package:video_call_app/ui/auth_navigation_screen/auth_navigation_screen.dart';
import 'package:video_call_app/ui/welcome_screen/welcome_screen.dart';
Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Calling App',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      home: const AuthNavigationScreen(child: WelcomeScreen()),
    );
  }
}
