import 'package:fl_third_project/components/productContainer.dart';
import 'package:fl_third_project/const/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilFournisseur extends StatefulWidget {
  const ProfilFournisseur({Key? key}) : super(key: key);

  @override
  State<ProfilFournisseur> createState() => _ProfilFournisseurState();
}

class _ProfilFournisseurState extends State<ProfilFournisseur> {
  int TabBarIndexValue = 0;
  int selectedIndex = 0;
  bool isLienActif = true;
  bool isLienRompu = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Fournisseur',
            style: TextStyle(color: Colors.black, fontSize: 12)),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                      alignment: Alignment.topCenter,
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text("Recruté par",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center),
                                Divider(),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("assets/profil/13.png"),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Michael Kouamé",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Le 1é Janvier 2022, 10:10",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                              "205 produits enregistrés",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Text(
                                    "Membre depuis le 07/fev/2020",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: FloatingActionButton(
                              mini: true,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.close,
                                color: blue,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          )
                        ],
                      )));
            },
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage("assets/profil/13.png"),
            ),
          ),
          PopupMenuButton(
              constraints: const BoxConstraints(minWidth: 120),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.message,
                            size: 12,
                          ),
                          const Text(
                            'Message',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.powerOff,
                            size: 12,
                          ),
                          const Text(
                            'Décconnecter',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.close,
                            size: 12,
                          ),
                          const Text(
                            'Désactiver',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.trash,
                            size: 12,
                          ),
                          const Text('Supprimer',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                        ],
                      ),
                    ),
                  ])
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 8, left: 8, right: 8),
            color: Colors.white,
            child: Column(
              children: [
                Row(
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
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Boutique Carmel",
                          style: TextStyle(color: Colors.black54, fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.search, color: Colors.black54))
                  ],
                ),
                Divider(),
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
          ),
          Expanded(
            child: Column(
              children: [
                Visibility(
                  visible: isLienActif,
                  child: SizedBox(
                      height: size.height - 250,
                      child: GridView.count(
                        crossAxisCount: size.width < 350 ? 2 : 3,
                        childAspectRatio: .68,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        padding: EdgeInsets.all(10),
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "ProductView");
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/Nouveau-MacBook-Air-Apple-avis-840x400.jpg",
                                  ),
                                  Text(
                                    "Téléphone portable Iphone 7",
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outlined,
                                        color: blue,
                                        size: 15,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/ps5stockretour.jpg",
                                ),
                                Text("Téléphone portable Iphone 7"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.stars_rounded,
                                      color: Colors.black,
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/images/ps5stockretour.jpg",
                                ),
                                Text("Téléphone portable Iphone 7"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.stars_rounded,
                                      color: Colors.black,
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                Visibility(
                  visible: isLienRompu,
                  child: SizedBox(
                      height: size.height - 250,
                      child: GridView.count(
                        crossAxisCount: size.width < 350 ? 2 : 3,
                        childAspectRatio: .68,
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
        ],
      ),
    );
  }
}
