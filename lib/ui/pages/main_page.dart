import 'package:findingelephant/ui/pages/home_page.dart';
import 'package:findingelephant/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget Build Content
    Widget buildContent() {
      return HomePage();
    }

    // Bikin Widget Navigation Bottom nya dulu
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 64,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imagaURL: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imagaURL: 'assets/icon_search.png',
              ),
              CustomBottomNavigationItem(
                imagaURL: 'assets/icon_wallet.png',
              ),
              CustomBottomNavigationItem(
                imagaURL: 'assets/icon_activity.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customBottomNavigation(),
        ],
      ),
    );
  }
}
