import 'package:day_5_in_100_days_of_flutter/screen/overview_screen.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Color(0xFF0D111A),),
        primarySwatch: Colors.blue,
      ),
      home: const OverviewScreen(),
    );
  }
}
