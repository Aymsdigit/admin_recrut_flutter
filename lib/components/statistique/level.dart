import 'package:flutter/material.dart';

import '../../const/color.dart';

class LevelCard extends StatelessWidget {
  LevelCard({Key? key, required this.title, required this.levelNumber})
      : super(key: key);

  String title;
  int levelNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'LevelStats',
              arguments: {'screenTitle': title, 'levelNumber': levelNumber});
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              width: 150,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: orange, width: 5),
              )),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              levelNumber.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
