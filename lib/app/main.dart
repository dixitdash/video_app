import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//pub packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//packages
import 'package:video_call_app/infraStructure/theme/app_theme.dart';
import 'package:video_call_app/ui/auth_navigation_screen/auth_navigation_screen.dart';
import 'package:video_call_app/ui/signup/signup_screen.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();

  runApp(const MyApp());
  FlutterNativeSplash.remove();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yooom',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      home: const AuthNavigationScreen(
        child: SignupScreen(),
      ),
    );
  }
}
