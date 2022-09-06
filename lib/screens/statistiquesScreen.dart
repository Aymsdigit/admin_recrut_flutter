import 'package:fl_third_project/components/statistique/level.dart';
import 'package:flutter/material.dart';

import '../const/color.dart';

class Statistiques extends StatefulWidget {
  const Statistiques({Key? key}) : super(key: key);

  @override
  State<Statistiques> createState() => _StatistiquesState();
}

class _StatistiquesState extends State<Statistiques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueBold,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: blueBold,
        elevation: 0,
        title: Text(
          "Statistiques".toUpperCase(),
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
            top: BorderSide(color: orange, width: 3),
          )),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Retiré",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "116 000 / ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "135 000",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      "FCFA",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
                height: 2,
                color: Colors.white,
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, bottom: 20, left: 20, right: 20),
                    child: ListView(
                      children: [
                        LevelCard(
                          title: "Niveau 1",
                          levelNumber: 34,
                        ),
                        LevelCard(
                          title: "Niveau 2",
                          levelNumber: 106,
                        ),
                        LevelCard(
                          title: "Niveau 3",
                          levelNumber: 89,
                        ),
                        LevelCard(
                          title: "Niveau 4",
                          levelNumber: 27,
                        ),
                        LevelCard(
                          title: "Niveau 5",
                          levelNumber: 36,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
