import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SplashViewScreen extends StatefulWidget {
  const SplashViewScreen({super.key});

  @override
  State<SplashViewScreen> createState() => _SplashViewScreenState();
}

class _SplashViewScreenState extends State<SplashViewScreen> {
  navigate() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenHeight = size.height;
    double screenWidth = size.width;
    EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;

    return Padding(
      padding: devicePadding,
      child: const Scaffold(
        backgroundColor: Color(0xFF000000),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                textAlign: TextAlign.center,
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
