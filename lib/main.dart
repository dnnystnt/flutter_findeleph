import 'package:findingelephant/ui/pages/get_started_page.dart';
import 'package:findingelephant/ui/pages/main_page.dart';
import 'package:findingelephant/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}



// Untuk di Course BWA nya lanjut dari Detail Page - Title 04:24






