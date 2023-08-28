import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class SplashViewScreen extends StatefulWidget {
  const SplashViewScreen({super.key});

  @override
  State<SplashViewScreen> createState() => _SplashViewScreenState();
}

class _SplashViewScreenState extends State<SplashViewScreen> with TickerProviderStateMixin {
  bool isAnimate = false;
  AnimationController? controller;
  Animation<double>? animation;

  fadeInAnimation() {
    controller = AnimationController(duration: const Duration(milliseconds: 1100), vsync: this);
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    Future.delayed(const Duration(milliseconds: 200), () => controller!.forward());
  }

  iconAnimation() => Future.delayed(const Duration(milliseconds: 80), () => isAnimate = true);

  navigate() {
    Future.delayed(const Duration(seconds: 3), () {
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
    fadeInAnimation();
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
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 1500),
                onEnd: () {},
                height: isAnimate ? 200 : 40,
                width: isAnimate ? 200 : 40,
                clipBehavior: Clip.antiAlias,
                curve: Curves.bounceOut,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: isAnimate ? Colors.blue.withOpacity(0.5) : Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.asset(
                  "assets/images/todo.png",
                  width: 500,
                  height: 500,
                ),
              ),
              FadeTransition(
                opacity: animation!,
                child: const Text(
                  "To Do App",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
