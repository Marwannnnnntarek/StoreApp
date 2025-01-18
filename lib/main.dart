import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';


void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      routes: {
        'HomeScreen': (context) => const HomeScreen(),
      },
      initialRoute: 'HomeScreen',
    );
  }
}
