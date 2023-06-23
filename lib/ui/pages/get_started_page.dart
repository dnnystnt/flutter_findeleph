import 'package:findingelephant/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_get_started.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Find Extinct Elephant',
                  style: whiteTextStyle.copyWith(
                    fontSize: 28,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Through this app, we will realize that \nelephant is very important to stabilize \nour World',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: reguler,
                  ),
                  textAlign: TextAlign.center,
                ),
                CustomButton(
                  title: 'Get Started',
                  width: 220,
                  onPressed: () {
                    Navigator.pushNamed(context, '/main');
                  },
                  margin: EdgeInsets.only(
                    top: 40,
                    bottom: 60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
