import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  Widget build(context, SplashScreenController controller) {
    controller.view = this;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -98,
            top: 200,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                );
              },
              child: Container(
                width: 600,
                height: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.elliptical(500, 300)),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    "GIAT SIFORS",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<SplashScreenView> createState() => SplashScreenController();
}
