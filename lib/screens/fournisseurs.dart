import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

import '../components/ProfilCard.dart';
import '../components/paiementCard.dart';
import '../components/productContainer.dart';
import '../components/profilAppbar.dart';
import '../const/color.dart';
import '../model/userData.dart';

class Fournisseurs extends StatefulWidget {
  const Fournisseurs({Key? key}) : super(key: key);

  @override
  State<Fournisseurs> createState() => _FournisseursState();
}

class _FournisseursState extends State<Fournisseurs> {
  int TabBarIndexValue = 0;
  int selectedIndex = 0;
  bool isLienActif = true;
  bool isLienRompu = false;
  bool pendingPaid = true;
  bool isPaid = false;
  bool isStandard = true;
  bool isCertified = false;
  bool isNoCertified = false;
  bool isMix = false;
  bool isNew = true;
  bool isEnd = false;
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments as Map);
    int cpteIndex = arguments["cpteIndex"];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70.withOpacity(.95),
      appBar: cpteIndex == 2
          ? AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              title: Text(
                "Nouveaux produits",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            )
          : PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 0.0,
                ),
                child: AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  primary: true,
                  title: ProfilAppbar(
                    appTitle: cpteIndex == 5
                        ? "Les produits 2045"
                        : 'Les fournisseurs',
                  ),
                  bottom: cpteIndex == 2
                      ? PreferredSize(
                          preferredSize: Size.fromHeight(0.0),
                          child: Text(""),
                        )
                      : PreferredSize(
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
                                    labelStyle: TextStyle(
                                        fontSize: size.width < 350 ? 15 : 20),
                                    unselectedLabelColor: const Color.fromARGB(
                                        255, 138, 136, 136), // Other tabs color

                                    indicatorSize: TabBarIndicatorSize
                                        .label, // Space between tabs
                                    indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: orange,
                                          width: 2), // Indicator height
                                      // Indicator width
                                    ),
                                    tabs: [
                                      Tab(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: .0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
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
                                            left: BorderSide(
                                                color: grey, width: 3),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
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

                                    indicatorSize: TabBarIndicatorSize
                                        .label, // Space between tabs
                                    indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: orange,
                                          width: 2), // Indicator height
                                      // Indicator width
                                    ),
                                    tabs: [
                                      Tab(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: .0),
                                              child: Container(
                                                child: Text(
                                                  " Standard",
                                                  style: TextStyle(
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                              ))),
                                      Tab(
                                          child: Text(
                                        " Certifié",
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis),
                                      )),
                                      Tab(
                                          child: Container(
                                        child: Text(
                                          " Mix",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      )),
                                    ],
                                    onTap: (index) {
                                      setState(() {
                                        TabBarIndexValue = index;
                                        if (index == 0) {
                                          setState(() {
                                            isStandard = true;
                                            isCertified = false;
                                            isMix = false;
                                          });
                                        }
                                        if (index == 1) {
                                          setState(() {
                                            isStandard = false;
                                            isCertified = true;
                                            isMix = false;
                                          });
                                        }
                                        if (index == 2) {
                                          setState(() {
                                            isStandard = false;
                                            isCertified = false;
                                            isMix = true;
                                          });
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: cpteIndex == 4,
                                child: DefaultTabController(
                                  length: 2,
                                  child: TabBar(
                                    labelColor: orange,
                                    automaticIndicatorColorAdjustment: true,
                                    isScrollable: false, // Required
                                    labelStyle: TextStyle(
                                        fontSize: size.width < 350 ? 15 : 20),
                                    unselectedLabelColor: const Color.fromARGB(
                                        255, 138, 136, 136), // Other tabs color

                                    indicatorSize: TabBarIndicatorSize
                                        .label, // Space between tabs
                                    indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: orange,
                                          width: 2), // Indicator height
                                      // Indicator width
                                    ),
                                    tabs: [
                                      Tab(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: .0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: const [
                                                    Flexible(
                                                      child: Text(
                                                        "Nouvelles",
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
                                            left: BorderSide(
                                                color: grey, width: 3),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Flexible(
                                                child: Text(
                                                  "Terminées",
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
                                            isNew = true;
                                            isEnd = false;
                                          });
                                        } else {
                                          setState(() {
                                            isNew = false;
                                            isEnd = true;
                                          });
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: cpteIndex == 5,
                                child: DefaultTabController(
                                  length: 2,
                                  child: TabBar(
                                    labelColor: orange,
                                    automaticIndicatorColorAdjustment: true,
                                    isScrollable: false, // Required
                                    labelStyle: TextStyle(
                                        fontSize: size.width < 350 ? 15 : 20),
                                    unselectedLabelColor: const Color.fromARGB(
                                        255, 138, 136, 136), // Other tabs color

                                    indicatorSize: TabBarIndicatorSize
                                        .label, // Space between tabs
                                    indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: orange,
                                          width: 2), // Indicator height
                                      // Indicator width
                                    ),
                                    tabs: [
                                      Tab(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: .0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: const [
                                                    Flexible(
                                                      child: Text(
                                                        "Certifiés",
                                                      ),
                                                    ),
                                                    Text(
                                                      "23",
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                      Tab(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            left: BorderSide(
                                                color: grey, width: 3),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: const [
                                              Flexible(
                                                child: Text(
                                                  "Non certifiés",
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
                                            isCertified = true;
                                            isNoCertified = false;
                                          });
                                        } else {
                                          setState(() {
                                            isCertified = false;
                                            isNoCertified = true;
                                          });
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: cpteIndex == 3,
                                child: DefaultTabController(
                                  length: 2,
                                  child: TabBar(
                                    labelColor: orange,
                                    automaticIndicatorColorAdjustment: true,
                                    isScrollable: false, // Required
                                    labelStyle: const TextStyle(fontSize: 15),
                                    unselectedLabelColor:
                                        Colors.green, // Other tabs color

                                    indicatorSize: TabBarIndicatorSize
                                        .label, // Space between tabs
                                    indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          color: orange,
                                          width: 2), // Indicator height
                                      // Indicator width
                                    ),
                                    tabs: [
                                      Tab(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: .0),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      " Paiements",
                                                      style: TextStyle(
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                    Text(
                                                      " 03",
                                                      style: TextStyle(
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                  ],
                                                ),
                                              ))),
                                      Tab(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            " Payés",
                                            style: TextStyle(
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ),
                                          Text(
                                            " 10",
                                            style: TextStyle(
                                                overflow:
                                                    TextOverflow.ellipsis),
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
                cpteIndex == 5 || cpteIndex == 2 || cpteIndex == 4
                    ? Text("")
                    : Container(
                        padding: EdgeInsets.all(10),
                        decoration:
                            BoxDecoration(color: grey, boxShadow: shadow),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Février 2022"), Text("043")],
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
                                          context, "ProfilFournisseur");
                                    },
                                    child: ProfilCard(
                                      date: users[i].date,
                                      itemCount: users.length,
                                      name: users[i].name,
                                      value: RichText(
                                          text: TextSpan(children: const [
                                        TextSpan(
                                            text: '05',
                                            style: TextStyle(
                                              color: blue,
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
                                          text: '15',
                                          style: TextStyle(
                                            color: blue,
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

            //produits visibility
            Visibility(
              visible: cpteIndex == 2,
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
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "ListProducts");
                                    },
                                    child: ProfilCard(
                                      date: users[i].date,
                                      itemCount: users.length,
                                      name: users[i].name,
                                      value: RichText(
                                          text: TextSpan(children: const [
                                        TextSpan(
                                            text: '3',
                                            style: TextStyle(
                                              color: blue,
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
                  ],
                ),
              ),
            ),
            //listes des Fournisseur

            Visibility(
              visible: pendingPaid && cpteIndex == 3,
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
              visible: isPaid && cpteIndex == 3,
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
                                  Navigator.pushNamed(context, "Historique",
                                      arguments: {'statut': 'isPaid'});
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
            Visibility(
              visible: isStandard && cpteIndex == 1,
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
                                  return InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, "ProfilScreen");
                                    },
                                    child: ProfilCard(
                                      date: users[i].date,
                                      itemCount: users.length,
                                      name: users[i].name,
                                      value: RichText(
                                          text: TextSpan(children: const [
                                        TextSpan(
                                            text: '59',
                                            style: TextStyle(
                                                color: blue, fontSize: 15)),
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
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isCertified && cpteIndex == 1,
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
                                          text: '59',
                                          style: TextStyle(
                                              color: blue, fontSize: 15)),
                                    ])),
                                    profilPicture: users[i].profilImage,
                                    CardColor: Colors.white,
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

            Visibility(
              visible: isMix && cpteIndex == 1,
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
                                          text: '49',
                                          style: TextStyle(
                                              color: blue, fontSize: 15)),
                                    ])),
                                    profilPicture: users[i].profilImage,
                                    CardColor: Colors.white,
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
            //index 4
            Visibility(
                visible: isNew && cpteIndex == 4,
                child: SizedBox(
                  height: size.height - 250,
                  child: ListView(
                    children: [
                      Container(
                        width: size.width,
                        margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: orange, width: 1),
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/profil/10.png"),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: SizedBox(
                                    width: size.width / 2.3,
                                    child: Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "mission daymond".toUpperCase(),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: orange,
                                                fontSize:
                                                    size.width < 350 ? 15 : 25),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Bonjour mosieursbsbdbshdbdhsbdhsd",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.black54),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: TimerCountdown(
                                    spacerWidth: 0,
                                    enableDescriptions: false,
                                    format: CountDownTimerFormat
                                        .hoursMinutesSeconds,
                                    endTime:
                                        DateTime.now().add(Duration(hours: 2)),
                                    onEnd: () {
                                      print("Timer finished");
                                    },
                                    timeTextStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "10:10",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Visibility(
                visible: isEnd && cpteIndex == 4,
                child: SizedBox(
                  height: size.height - 250,
                  child: ListView(
                    children: [
                      Container(
                        width: size.width,
                        margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border:
                                          Border.all(color: orange, width: 1),
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/profil/10.png"),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: SizedBox(
                                    width: size.width / 2.3,
                                    child: Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "mission daymond".toUpperCase(),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: orange,
                                                fontSize:
                                                    size.width < 350 ? 15 : 25),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Bonjour mosieursbsbdbshdbdhsbdhsd",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.black54),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: TimerCountdown(
                                    spacerWidth: 0,
                                    enableDescriptions: false,
                                    format: CountDownTimerFormat
                                        .hoursMinutesSeconds,
                                    endTime: DateTime.now()
                                        .add(Duration(seconds: 30)),
                                    onEnd: () {
                                      print("Timer finished");
                                      Text("Terminé");
                                    },
                                    timeTextStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "10:10",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            //Certified et index 5
            Visibility(
              visible: isCertified && cpteIndex == 5,
              child: SizedBox(
                  height: size.height - 250,
                  child: GridView.count(
                    crossAxisCount: size.width < 350 ? 2 : 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(10),
                    children: [
                      ProductContainer(
                        name: 'Macbook Pro ',
                        image:
                            'assets/images/Nouveau-MacBook-Air-Apple-avis-840x400.jpg',
                      ),
                      ProductContainer(
                        name: ' Playstation 5 (PS5) ',
                        image: 'assets/images/ps5stockretour.jpg',
                      ),
                      ProductContainer(
                        name: ' Playstation 5 (PS5) ',
                        image: 'assets/images/ps5stockretour.jpg',
                      ),
                    ],
                  )),
            ),
            Visibility(
              visible: isNoCertified && cpteIndex == 5,
              child: SizedBox(
                  height: size.height - 250,
                  child: GridView.count(
                    crossAxisCount: size.width < 350 ? 2 : 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(10),
                    children: [
                      ProductContainer(
                        name: 'Macbook Pro ',
                        image:
                            'assets/images/Nouveau-MacBook-Air-Apple-avis-840x400.jpg',
                      ),
                      ProductContainer(
                        name: ' Playstation 5 (PS5) ',
                        image: 'assets/images/ps5stockretour.jpg',
                      ),
                      ProductContainer(
                        name: ' Playstation 5 (PS5) ',
                        image: 'assets/images/ps5stockretour.jpg',
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
