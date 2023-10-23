import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop_app/constants/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FluidNavBar(
        style: const FluidNavBarStyle(
          barBackgroundColor: Constants.mainColor,
        ),
        icons: [
          FluidNavBarIcon(
              svgPath: 'assets/images/home.svg',
              backgroundColor: Constants.mainColor.withAlpha(30),
              extras: {'label': 'Home'}),
          FluidNavBarIcon(
              svgPath: 'assets/images/shop_car.svg',
              backgroundColor: Constants.mainColor,
              extras: {'label': 'Shop'}),
          FluidNavBarIcon(
              svgPath: 'assets/images/heart-fill.svg',
              backgroundColor: Constants.mainColor,
              extras: {'label': 'Favourite'}),
          FluidNavBarIcon(
              svgPath: 'assets/images/profile.svg',
              backgroundColor: Constants.mainColor,
              extras: {'label': 'Profile'}),
        ]);
  }
}