import 'package:flutter/material.dart';

import '../../font_style.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: const Color.fromARGB(255, 250, 247, 247),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Session 01",
              style: smTextstyle,
            ),
          ],
        ),
      ),
    );
  }
}
