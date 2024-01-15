import 'package:flutter/material.dart';
import 'package:harry_potter/views/home_view.dart';
import 'package:harry_potter/views/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
      routes: {
        '/home': (context) => const HomeView(),
        // Define aquí otras rutas según sea necesario
      },
    );
  }
}
