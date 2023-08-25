// import 'package:flutter/material.dart';
//
// import '../home/home_screen.dart';
//
// class SplashViewScreen extends StatefulWidget {
//   const SplashViewScreen({super.key});
//
//   @override
//   State<SplashViewScreen> createState() => _SplashViewScreenState();
// }
//
// class _SplashViewScreenState extends State<SplashViewScreen> {
//   bool isAnimate = false;
//   AnimatedController? controller;
//   Animation<double>? animation;
// // double _width = 50;
// // double _height = 50;
// // Color _color = Colors.green;
// // BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
//
//   fadeInAnimation() {
//     controller = AnimatedController(duration: const Duration(milliseconds: 1800), vsync: this);
//     animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
//     Future.delayed(const Duration(milliseconds: 400), () => controller!.forward());
//   }
//
//   iconAnimation() => Future.delayed(const Duration(milliseconds: 100), () => isAnimate = true);
//
//   navigate() {
//     Future.delayed(const Duration(seconds: 12), () {
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const HomeScreen(),
//           ),
//           (route) => false);
//     });
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     navigate();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double screenHeight = size.height;
//     double screenWidth = size.width;
//     EdgeInsets devicePadding = MediaQuery.of(context).viewPadding;
//
//     return Padding(
//       padding: devicePadding,
//       child: Scaffold(
//         backgroundColor: const Color(0xFF000000),
//         body: Column(
//           children: [
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 1500),
//               onEnd: () {},
//               height: isAnimate ? 200 : 40,
//               width: isAnimate ? 200 : 40,
//               clipBehavior: Clip.antiAlias,
//               curve: Curves.bounceOut,
//               padding: const EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 color: isAnimate ? Colors.blue.withOpacity(0.5) : Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: const FlutterLogo(),
//             ),
//             FadeTransition(
//               opacity: animation!,
//               child: const Text(
//                 "To Do App",
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
