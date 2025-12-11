import 'package:flutter/material.dart';
import 'package:hungr/features/auth/view/login_veiw.dart';
import 'package:hungr/features/auth/view/signup_view.dart';
import 'package:hungr/features/home/views/home_view.dart';
import 'package:hungr/root.dart';
import 'package:hungr/splash.dart';

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
      title: 'Hungry',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:SplashView(),
    );
  }
}

