import 'package:flutter/material.dart';

import '../const/color.dart';

class FournisseurDashboard extends StatefulWidget {
  const FournisseurDashboard({Key? key}) : super(key: key);

  @override
  State<FournisseurDashboard> createState() => _FournisseurDashboardState();
}

class _FournisseurDashboardState extends State<FournisseurDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Recruteur fournisseur",
            style: TextStyle(
                color: Colors.black, fontSize: size.width < 350 ? 11 : 18)),
        actions: [
          Image.asset(
            "assets/images/live-chat.png",
            width: 25,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 15,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.leaderboard,
                size: 15,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30.0, left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Fournisseurs",
                      arguments: {'cpteIndex': 0});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: blueBold, borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Les fournisseurs",
                              style: TextStyle(
                                  color: orange,
                                  fontSize: size.width < 350 ? 15 : 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Il y a 6 secondes",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: size.width < 350 ? 15 : 30,
                          backgroundColor: orange,
                          child: Text(
                            "8",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width < 350 ? 20 : 35,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Fournisseurs",
                      arguments: {'cpteIndex': 1});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: blueBold, borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Les recruteurs",
                              style: TextStyle(
                                  color: blue,
                                  fontSize: size.width < 350 ? 15 : 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "07:42",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: size.width < 350 ? 15 : 30,
                          backgroundColor: blue,
                          child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width < 350 ? 20 : 35,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Fournisseurs",
                      arguments: {'cpteIndex': 2});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: blueBold, borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nouveaux produits",
                              style: TextStyle(
                                  color: blueBold,
                                  fontSize: size.width < 350 ? 15 : 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Il y a 6 secondes",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: size.width < 350 ? 15 : 30,
                          backgroundColor: blueBold,
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width < 350 ? 20 : 35,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Fournisseurs",
                      arguments: {'cpteIndex': 3});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: blueBold, borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Demande de paiement",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: size.width < 350 ? 15 : 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Il y a 6 secondes",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: size.width < 350 ? 15 : 30,
                          backgroundColor: Colors.green,
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width < 350 ? 20 : 35,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Fournisseurs",
                      arguments: {'cpteIndex': 4});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: blueBold, borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nouvelle mission",
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: size.width < 350 ? 15 : 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Il y a 6 secondes",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: size.width < 350 ? 15 : 30,
                          backgroundColor: Colors.pink,
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width < 350 ? 20 : 35,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "Fournisseurs",
                      arguments: {'cpteIndex': 5});
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: blueBold, borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Les produits",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: size.width < 350 ? 15 : 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "07 : 42",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            )
                          ],
                        ),
                        Text(
                          "2045",
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: size.width < 350 ? 20 : 35,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
