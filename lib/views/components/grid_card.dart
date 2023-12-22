import 'package:excercise_app_ui/font_style.dart';
import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    Key? key,
    required this.text,
    required this.assetImageUrl,
  }) : super(key: key);

  final String text;
  final String assetImageUrl;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        shadowColor: Colors.black45,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(assetImageUrl),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: defaultTextstyle,
              ),
            ],
          ),
        ));
  }
}
