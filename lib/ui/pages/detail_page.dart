import 'package:findingelephant/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget Background Image nya
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_elephant7.png',
            ),
          ),
        ),
      );
    }

    // Bikin Widget Custom Shadow nya
    Widget customShadow() {
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    // Bikin Widget About Elephant nya
    Widget aboutElephant() {
      return Container(
        margin: EdgeInsets.only(
          top: 480,
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Elephant Drill',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Kenya',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      SizedBox(width: 4),
                      Text('4.5'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Ut sed turpis molestie sed ultricies faucibus nullam sed volutpat. Egestas viverra id diam aliquam sed. Dictum commodo amet ac dui.',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'IDR 500.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Per Person',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    // Buat Widget Custom Button
    Widget customButton() {
      return CustomButton(
        title: 'Reserve Now',
        onPressed: () {},
        margin: EdgeInsets.only(top: 780, left: 60, right: 60, bottom: 40),
        width: 268,
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                backgroundImage(),
                customShadow(),
                aboutElephant(),
                customButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
