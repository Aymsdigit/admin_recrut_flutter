import 'package:fl_third_project/components/ProfilCard.dart';
import 'package:fl_third_project/components/paiementCard.dart';
import 'package:fl_third_project/components/profilAppbar.dart';
import 'package:fl_third_project/const/color.dart';
import 'package:fl_third_project/model/userData.dart';
import 'package:flutter/material.dart';

class Vendeurs extends StatefulWidget {
  const Vendeurs({Key? key}) : super(key: key);

  @override
  State<Vendeurs> createState() => _VendeursState();
}

class _VendeursState extends State<Vendeurs> {
  int TabBarIndexValue = 0;
  int selectedIndex = 0;
  bool isLienActif = true;
  bool isLienRompu = false;
  bool pendingPaid = false;
  bool isPaid = true;
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments as Map);
    int cpteIndex = arguments["cpteIndex"];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(.95),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 0.0,
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            primary: true,
            title: ProfilAppbar(),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10.0),
              child: Column(
                children: [
                  Visibility(
                    visible: cpteIndex == 0,
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                        labelColor: orange,
                        automaticIndicatorColorAdjustment: true,
                        isScrollable: false, // Required
                        labelStyle:
                            TextStyle(fontSize: size.width < 350 ? 15 : 20),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                  ),
                  Visibility(
                    visible: cpteIndex == 1,
                    child: DefaultTabController(
                      length: 3,
                      child: TabBar(
                        labelColor: orange,
                        automaticIndicatorColorAdjustment: true,
                        isScrollable: false, // Required
                        labelStyle: const TextStyle(fontSize: 15),
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
                                    child: Text(
                                      " Standard",
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ))),
                          Tab(
                              child: Text(
                            " Certifié",
                            style: TextStyle(overflow: TextOverflow.ellipsis),
                          )),
                          Tab(
                              child: Container(
                            child: Text(
                              " Mix",
                              style: TextStyle(overflow: TextOverflow.ellipsis),
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
                  ),
                  Visibility(
                    visible: cpteIndex == 2,
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                        labelColor: orange,
                        automaticIndicatorColorAdjustment: true,
                        isScrollable: false, // Required
                        labelStyle: const TextStyle(fontSize: 15),
                        unselectedLabelColor: Colors.green, // Other tabs color

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
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          " Paiements",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                        Text(
                                          " 03",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ],
                                    ),
                                  ))),
                          Tab(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " Payés",
                                style:
                                    TextStyle(overflow: TextOverflow.ellipsis),
                              ),
                              Text(
                                " 10",
                                style:
                                    TextStyle(overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ))
                        ],
                        onTap: (index) {
                          setState(() {
                            TabBarIndexValue = index;
                            if (index == 0) {
                              setState(() {
                                isPaid = false;
                                pendingPaid = true;
                              });
                            } else {
                              setState(() {
                                isPaid = true;
                                pendingPaid = false;
                              });
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //listes des vendeurs
            Column(
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
                  visible: isLienActif && cpteIndex == 0,
                  child: SingleChildScrollView(
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
                ),
              ],
            ),
            Visibility(
              visible: isLienRompu && cpteIndex == 0,
              child: SingleChildScrollView(
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
                                    CardColor:
                                        Color.fromARGB(255, 240, 236, 236),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //listes des Fournisseur

            Visibility(
              visible: pendingPaid && cpteIndex == 2,
              child: SingleChildScrollView(
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
                                      context, "DetailPendingPaiement");
                                },
                                child: PaiementCard(
                                  montant: users[i].montant,
                                  itemCount: users.length,
                                  name: users[i].name,
                                  value: Text(
                                    users[i].date,
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                    textAlign: TextAlign.right,
                                  ),
                                  profilPicture: users[i].profilImage,
                                  CardColor: Colors.white,
                                  statut: 'non payé',
                                  StatutColor: Colors.red,
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isPaid && cpteIndex == 2,
              child: SingleChildScrollView(
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
                                      context, "RecrutFournisseur");
                                },
                                child: PaiementCard(
                                  statut: 'payé',
                                  montant: users[i].montant,
                                  itemCount: users.length,
                                  name: users[i].name,
                                  value: Text(
                                    users[i].date,
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                    textAlign: TextAlign.right,
                                  ),
                                  profilPicture: users[i].profilImage,
                                  CardColor: Colors.white,
                                  StatutColor: Colors.green,
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
