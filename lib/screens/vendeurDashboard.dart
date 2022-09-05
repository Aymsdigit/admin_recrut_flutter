import 'package:fl_third_project/const/color.dart';
import 'package:flutter/material.dart';

class VendeurDashboard extends StatefulWidget {
  const VendeurDashboard({Key? key}) : super(key: key);

  @override
  State<VendeurDashboard> createState() => _VendeurDashboardState();
}

class _VendeurDashboardState extends State<VendeurDashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Recruteur vendeur", style: TextStyle(color: Colors.black)),
        actions: [
          Image.asset(
            "assets/images/live-chat.png",
            width: 35,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0, left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "Vendeurs",
                    arguments: {'cpteIndex': 0});
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: blueBold, borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(15),
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
                            "Les vendeurs",
                            style: TextStyle(
                                color: orange,
                                fontSize: size.width < 350 ? 15 : 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Il y a 6 secondes",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
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
                Navigator.pushNamed(context, "Vendeurs",
                    arguments: {'cpteIndex': 1});
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: blueBold, borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(15),
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
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
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
                Navigator.pushNamed(context, "Vendeurs",
                    arguments: {'cpteIndex': 2});
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    color: blueBold, borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.all(15),
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
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
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
          ],
        ),
      ),
    );
  }
}
