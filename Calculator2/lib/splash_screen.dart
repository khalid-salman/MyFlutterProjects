import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashAnimated extends StatelessWidget {
  const SplashAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 200,
        backgroundColor: Colors.white,
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.rotationTransition,
        splash: const CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage("assets/images/calculator-logo.jpg"),
        ),
        nextScreen: const FirstScreen(),

// we can use
        duration: 2000,
//2000= 2 Second

//control the duration of the image , we can use
        animationDuration: const Duration(seconds: 5));
//small number : the duration will be speed
//large number : the duratiion will be slow);
  }
}
