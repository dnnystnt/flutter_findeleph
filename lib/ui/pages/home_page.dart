import 'package:findingelephant/ui/widgets/elephant_horizontal_card.dart';
import 'package:findingelephant/ui/widgets/elephant_news.dart';
import 'package:flutter/material.dart';
import 'package:findingelephant/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget Header
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile01.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Bikin Widget Popular Elephant
    Widget popularElephant() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Meet Elephant you \nliked the most',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      ElephantHorizontal(
                        title: 'Elephant 01',
                        description:
                            'Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas',
                        imageURL: 'assets/image_elephant1.png',
                      ),
                      ElephantHorizontal(
                        title: 'Elephant 02',
                        description:
                            'Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas',
                        imageURL: 'assets/image_elephant2.png',
                      ),
                      ElephantHorizontal(
                        title: 'Elephant 03',
                        description:
                            'Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas Lorem ipsum dolor sit amet consectetur adipiscing elit nunca iumas',
                        imageURL: 'assets/image_elephant3.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    // Bikin Widget Other Elephant News
    Widget otherElephantnews() {
      return Container(
        margin: EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Other Elephant News',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        'See All',
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
            ElephantNews(
              name: 'Elephant Drill',
              city: 'Kenya',
              imageURL: 'assets/image_elephant4.png',
            ),
            ElephantNews(
              name: 'Elephant Sticky Rice',
              city: 'Thailand',
              imageURL: 'assets/image_elephant5.png',
            ),
            ElephantNews(
              name: 'Elephant Steamhead',
              city: 'Sri Lanka',
              imageURL: 'assets/image_elephant6.png',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularElephant(),
        otherElephantnews(),
      ],
    );
  }
}
