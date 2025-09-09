import 'package:flutter/material.dart';
import 'main_page.dart';

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
      title: "oggiamensa",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(243, 126, 17, 1),
        ),
        navigationBarTheme: NavigationBarThemeData(
          indicatorColor: Color.fromRGBO(255, 131, 49, 1), // dark orange
        ),
        useMaterial3: true
      ),
      home: const MainPage(),
    );
  }
}
