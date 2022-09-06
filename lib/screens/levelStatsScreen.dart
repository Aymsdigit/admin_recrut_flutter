// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:fl_third_project/components/ProfilCard.dart';
import 'package:fl_third_project/const/color.dart';
import 'package:fl_third_project/model/userData.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LevelStats extends StatefulWidget {
  const LevelStats({Key? key}) : super(key: key);

  @override
  State<LevelStats> createState() => _LevelStatsState();
}

class _LevelStatsState extends State<LevelStats> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments as Map);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: light,
      appBar: AppBar(
        backgroundColor: blueBold,
        centerTitle: true,
        elevation: 0,
        title: Text(
          arguments["screenTitle"].toUpperCase(),
          style: const TextStyle(fontSize: 30),
        ),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    arguments["levelNumber"].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  FaIcon(
                    FontAwesomeIcons.search,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            preferredSize: const Size.fromHeight(60)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.8,
                child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'DetailVendeur',
                                arguments: {
                                  'name': users[i].name,
                                  'profilPicture': users[i].profilImage
                                });
                          },
                          child: ProfilCard(
                            date: users[i].date,
                            itemCount: users.length,
                            name: users[i].name,
                            value: Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                                size: size.width < 350 ? 25 : 35,
                              ),
                            ),
                            profilPicture: users[i].profilImage,
                            CardColor: Colors.white,
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
