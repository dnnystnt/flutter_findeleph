import 'dart:async';

import 'package:findingelephant/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => GetStartedPage(),
      //     ));

      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 264,
              height: 264,
              margin: EdgeInsetsDirectional.only(bottom: 24),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_elephant.png',
                  ),
                ),
              ),
            ),
            Text(
              'FINDING ELEPHANT',
              style: whiteTextStyle.copyWith(
                fontSize: 40,
                fontWeight: bold,
                letterSpacing: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
