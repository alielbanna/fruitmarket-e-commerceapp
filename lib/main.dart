import 'package:flutter/material.dart';
import 'package:fruitmarket/features/splash/presentation/splash_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Poppins',
      ),
      home: const SplashView(),
    );
  }
}
