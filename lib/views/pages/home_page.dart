import 'package:flutter/material.dart';

import '../../font_style.dart';
import '../components/grid_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          Expanded(
              flex: 10,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/background.png'))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.green.shade300,
                            child: Image.asset('assets/images/menu-icon.png'),
                          ),
                        ],
                      ),
                      Text(
                        "Good Morning \nAdmin",
                        style: h2Textstyle.copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        width: double.infinity,
                        height: 45,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            children: [
                              const Icon(Icons.search),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Search",
                                style: defaultTextstyle.copyWith(
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                color: Colors.white,
              ))
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 200,
          ),
          Expanded(
            child: GridView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6),
              children: const [
                GridCard(
                  assetImageUrl: 'assets/images/undraw_Hamburger.png',
                  text: "Diet Recommendation",
                ),
                GridCard(
                  assetImageUrl: 'assets/images/Excrecises illustration.png',
                  text: "Kegel Excercises",
                ),
                GridCard(
                  assetImageUrl: 'assets/images/undraw_Meditation2.png',
                  text: "Meditation",
                ),
                GridCard(
                  assetImageUrl: 'assets/images/undraw_meditatin.png',
                  text: "Yoga",
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
