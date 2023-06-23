import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imagaURL;
  final bool isSelected;

  const CustomBottomNavigationItem({
    super.key,
    required this.imagaURL,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imagaURL,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
