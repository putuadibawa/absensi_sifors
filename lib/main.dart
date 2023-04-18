import 'package:absensi_sifors/module/login/view/login_view.dart';
import 'package:absensi_sifors/module/splash_screen/view/splash_screen_view.dart';
import 'package:absensi_sifors/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenView(),
    );
  }
}
