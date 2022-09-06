import 'package:fl_third_project/components/bottomTabBarVendeur.dart';
import 'package:fl_third_project/const/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Recruteur",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Row(
              children: [
                FaIcon(
                  Icons.badge,
                  size: 20,
                  color: blue,
                ),
                SizedBox(
                  width: 10,
                ),
                FaIcon(
                  Icons.currency_exchange,
                  size: 20,
                  color: Colors.green,
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  Icons.more_vert,
                  size: 20,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              color: blueBold,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/profil/3.png"),
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                          child: Text("1"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      Text(
                        "Michael Kouamé",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Membre depuis le 07/févr/2020",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/civ.png",
                        width: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Abidjan, yopougon",
                          style:
                              TextStyle(fontSize: size.width < 350 ? 15 : 20)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.phone,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Abidjan, yopougon",
                          style:
                              TextStyle(fontSize: size.width < 350 ? 15 : 15)),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.envelope,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("johndoe@gmail.com",
                          style:
                              TextStyle(fontSize: size.width < 350 ? 15 : 15)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 57,
          child: SizedBox(
            child: Column(
              children: [
                BottomTabbarVendeur(selectedIndex: 0),
              ],
            ),
          ),
        ));
  }
}
