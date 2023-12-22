import 'package:flutter/material.dart';

import '../../font_style.dart';
import '../components/session_card.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({
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
                    color: Colors.blue.shade200,
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/background.png',
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.lightBlue, BlendMode.colorDodge))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Stack(
                    children: [
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Meditation",
                              style: h2Textstyle.copyWith(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "3-10 MIN Course",
                              style: defaultTextstyle,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Live happier and healthier by learning the fundamentals of meditation\nand mindfulness",
                              style: smTextstyle.copyWith(height: 1.8),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              height: 45,
                              width: 200,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
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
                          ]),
                      Positioned(
                          top: 50,
                          right: -40,
                          child: Image.asset(
                            'assets/images/undraw_Meditation2.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                color: const Color.fromARGB(255, 247, 244, 244),
              ))
        ],
      ),
      ListView(
        children: [
          const SizedBox(
            height: 230,
          ),
          Expanded(
            flex: 3,
            child: GridView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2.2 / 1,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6),
              children: const [
                SessionCard(),
                SessionCard(),
                SessionCard(),
                SessionCard(),
                SessionCard(),
                SessionCard(),
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Meditation",
                      style: labelTextStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      elevation: 5,
                      shadowColor: Colors.black38,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: Image.asset(
                          'assets/images/undraw_Meditation2.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Basics 2",
                          style: defaultTextstyle,
                        ),
                        subtitle: Text(
                          "Start your deepen you practice",
                          style: defaultTextstyle,
                        ),
                        trailing: const Icon(
                          Icons.lock_rounded,
                          color: Color.fromARGB(255, 3, 32, 56),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    ]);
  }
}
