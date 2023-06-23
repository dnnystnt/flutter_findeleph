import 'package:findingelephant/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class ElephantNews extends StatelessWidget {
  final String name;
  final String city;
  final String imageURL;

  const ElephantNews({
    super.key,
    required this.name,
    required this.city,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.only(left: 16, top: 28),
        width: 319,
        height: 143,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageURL,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              city,
              style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: reguler,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
