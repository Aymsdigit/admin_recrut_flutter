import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/productContainer.dart';
import '../const/color.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({Key? key}) : super(key: key);

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  int TabBarIndexValue = 0;
  int selectedIndex = 0;
  bool isNew = true;
  bool isCertified = false;
  bool isNoConforme = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Nouveaux produits",
            style: TextStyle(color: Colors.black, fontSize: 15),
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
              padding: EdgeInsets.all(5),
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
                        radius: 20,
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
                        "Michael Kouamé".toUpperCase(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Liste des produits",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Colors.white, boxShadow: shadow),
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                      labelColor: orange,
                      automaticIndicatorColorAdjustment: true,
                      isScrollable: false, // Required
                      labelStyle:
                          TextStyle(fontSize: size.width < 350 ? 12 : 20),
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
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Flexible(
                              child: Text(
                                "Nouveaux",
                              ),
                            ),
                            Text(
                              "03",
                            ),
                          ],
                        )),
                        Tab(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Flexible(
                              child: Text(
                                "Certifié",
                              ),
                            ),
                          ],
                        )),
                        Tab(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Flexible(
                              child: Text(
                                "Non conforme",
                              ),
                            )
                          ],
                        )),
                      ],
                      onTap: (index) {
                        setState(() {
                          TabBarIndexValue = index;
                          if (index == 0) {
                            setState(() {
                              isCertified = false;
                              isNew = true;
                              isNoConforme = false;
                            });
                          }
                          if (index == 1) {
                            setState(() {
                              isCertified = true;
                              isNew = false;
                              isNoConforme = false;
                            });
                          }
                          if (index == 2) {
                            setState(() {
                              isCertified = false;
                              isNew = false;
                              isNoConforme = true;
                            });
                          }
                        });
                      },
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Visibility(
                        visible: isNew,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 0.0, bottom: .0),
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
                                      Navigator.pushNamed(
                                          context, "ProductView");
                                    },
                                    child: Stack(
                                      children: [
                                        ProductContainer(
                                          name: 'Macbook Pro ',
                                          image:
                                              'assets/images/Nouveau-MacBook-Air-Apple-avis-840x400.jpg',
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                top: 2,
                                                bottom: 2,
                                                left: 8,
                                                right: 8),
                                            decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: Text(
                                              "Neuf",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ProductContainer(
                                    name: ' Playstation 5 (PS5) ',
                                    image: 'assets/images/ps5stockretour.jpg',
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Visibility(
                        visible: isCertified,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 0.0, bottom: .0),
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
                                ],
                              )),
                        ),
                      ),
                      Visibility(
                        visible: isNoConforme,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 0.0, bottom: .0),
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
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
