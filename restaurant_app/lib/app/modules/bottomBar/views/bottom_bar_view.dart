import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/modules/favorites/views/favorites_view.dart';
import 'package:restaurant_app/app/modules/profile/views/profile_view.dart';
import 'package:restaurant_app/app/modules/search/views/search_view.dart';
import 'package:restaurant_app/app/modules/welcome/views/welcome_view.dart';
import 'package:restaurant_app/app/utils/colors.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  const BottomBarView({super.key});
  @override
  Widget build(BuildContext context) {
    final RxInt _currentIndex = 0.obs;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Obx(() {
        return IndexedStack(
          index: _currentIndex.value,
          children: [
            WelcomeView(),
            const SearchView(),
            const FavoritesView(),
            const ProfileView()
          ],
        );
      }),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex.value,
          onTap: (index) {
            _currentIndex.value = index;
          },
          curve: Curves.bounceIn,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: primaryclr,
              // unselectedColor: primaryclr,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("search"),
              selectedColor: primaryclr,
              // unselectedColor: primaryclr,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite),
              title: const Text("Favorite"),
              selectedColor: primaryclr,
              // unselectedColor: primaryclr,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Account"),
              selectedColor: primaryclr,
              // unselectedColor: primaryclr,
            ),
          ]),
    );
  }
}
