import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              width: 200, // adjust the width to your liking
              height: 200, // adjust the height to your liking
            ),
            const SizedBox(
                height: 20), // add some space between the logo and the buttons
            InkWell(
              onTap: () => Get.toNamed('/signup'),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: Get.width * 0.9,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(28.0)),
                    color: primaryclr,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        spreadRadius: 5,
                        blurRadius: 6,
                        offset: const Offset(0, 5),
                      ),
                    ]),
                child: const Text(
                  'sign up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20), // add some space between the buttons
            InkWell(
              onTap: () => Get.toNamed('/login'),
              child: Container(
                padding: const EdgeInsets.all(15.0),
                width: Get.width * 0.9,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(28.0)),
                  // color: primaryclr,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: primaryclr,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
