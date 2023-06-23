import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class ElephantHorizontal extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;

  const ElephantHorizontal({
    super.key,
    required this.title,
    required this.description,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319,
      height: 240,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 319,
            height: 151,
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageURL,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
