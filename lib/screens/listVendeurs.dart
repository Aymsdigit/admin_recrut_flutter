import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/ProfilCard.dart';
import '../const/color.dart';
import '../model/userData.dart';

class ListVendeur extends StatefulWidget {
  const ListVendeur({Key? key}) : super(key: key);

  @override
  State<ListVendeur> createState() => _ListVendeurState();
}

class _ListVendeurState extends State<ListVendeur> {
  int TabBarIndexValue = 0;
  int selectedIndex = 0;
  bool isLienActif = true;
  bool isLienRompu = false;
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
                        "Liste des Vendeurs",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(Icons.search, color: Colors.white))
                ],
              ),
            ),
            Column(
              children: [
                DefaultTabController(
                  length: 2,
                  child: TabBar(
                    labelColor: orange,
                    automaticIndicatorColorAdjustment: true,
                    isScrollable: false, // Required
                    labelStyle: TextStyle(fontSize: size.width < 350 ? 15 : 20),
                    unselectedLabelColor: const Color.fromARGB(
                        255, 138, 136, 136), // Other tabs color

                    indicatorSize:
                        TabBarIndicatorSize.label, // Space between tabs
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                          color: orange, width: 2), // Indicator height
                      // Indicator width
                    ),
                    tabs: [
                      Tab(
                          child: Padding(
                              padding: EdgeInsets.only(right: .0),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Flexible(
                                      child: Text(
                                        "Liens actifs",
                                      ),
                                    ),
                                    Text(
                                      "03",
                                    ),
                                  ],
                                ),
                              ))),
                      Tab(
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(color: grey, width: 3),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Flexible(
                                child: Text(
                                  "Lien rompus",
                                ),
                              ),
                              Text(
                                "03",
                              ),
                            ],
                          ),
                        ),
                      )),
                    ],
                    onTap: (index) {
                      setState(() {
                        TabBarIndexValue = index;
                        if (index == 0) {
                          setState(() {
                            isLienRompu = false;
                            isLienActif = true;
                          });
                        } else {
                          setState(() {
                            isLienRompu = true;
                            isLienActif = false;
                          });
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(color: grey, boxShadow: shadow),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Février 2022"), Text("03")],
                      ),
                    ),
                    Visibility(
                      visible: isLienActif,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0, bottom: .0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.67,
                              child: ListView.builder(
                                  itemCount: users.length,
                                  itemBuilder: (context, i) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "ProfilVendeur");
                                      },
                                      child: ProfilCard(
                                        date: users[i].date,
                                        itemCount: users.length,
                                        name: users[i].name,
                                        value: RichText(
                                            text: TextSpan(children: const [
                                          TextSpan(
                                              text: '2',
                                              style: TextStyle(
                                                  color: blue, fontSize: 23)),
                                          TextSpan(
                                              text: ' / ' '5',
                                              style: TextStyle(
                                                color: black,
                                              )),
                                        ])),
                                        profilPicture: users[i].profilImage,
                                        CardColor: Colors.white,
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isLienRompu,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 10.0, bottom: .0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height * 0.67,
                                  child: ListView.builder(
                                      itemCount: users.length,
                                      itemBuilder: (context, i) {
                                        return ProfilCard(
                                          date: users[i].date,
                                          itemCount: users.length,
                                          name: users[i].name,
                                          value: RichText(
                                              text: TextSpan(children: const [
                                            TextSpan(
                                                text: '5',
                                                style: TextStyle(
                                                    color: blue, fontSize: 23)),
                                            TextSpan(
                                                text: ' / ' '5',
                                                style: TextStyle(
                                                  color: black,
                                                )),
                                          ])),
                                          profilPicture: users[i].profilImage,
                                          CardColor: Color.fromARGB(
                                              255, 240, 236, 236),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
