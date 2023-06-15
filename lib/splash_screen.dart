import 'dart:async';
import 'package:flutter/material.dart';
import 'package:smarthub/user_module/components/user_app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, UserAppRoutes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/gifs/sh-clogo-ffffff-600x300.gif',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
