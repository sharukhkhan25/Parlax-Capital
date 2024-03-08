// IGNORE_FOR_FILE: USE_BUILD_CONTEXT_SYNCHRONOUSLY

// ignore_for_file: use_build_context_synchronously, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 20, 20, 20),
              Color.fromARGB(255, 7, 1, 83)
            ],
          ),
        ),
        child: Center(
          child: Container(
            child: const Image(
              image: AssetImage('images/Logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
