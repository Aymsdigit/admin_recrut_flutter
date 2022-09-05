import 'package:flutter/material.dart';

enum RecrutChoice { vendeurs, fournisseurs }

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  RecrutChoice? _recrutChoice;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 8,
                                color: Colors.grey)
                          ],
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/civ.png")))),
                ],
              ),
            ),
            Positioned(
              right: 10,
              top: 5,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.qr_code,
                color: Colors.black,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: SizedBox(
        child: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/recrutment.png",
                                    width: size.width < 350 ? 25 : 50,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(
                                    height: 2,
                                    thickness: 2,
                                    endIndent: 130,
                                    indent: 130,
                                  ),
                                  SizedBox(height: 5),
                                  const Text('Choisir le type de paiement'),
                                  SizedBox(height: 15),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "VendeurDashboard");
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 2,
                                                    color: Colors.grey)
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Recruter des vendeurs"),
                                              Text(
                                                "9",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "FournisseurDashboard");
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    blurRadius: 2,
                                                    color: Colors.grey)
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Recruter des fournisseurs"),
                                              Text(
                                                "9",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 500,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(blurRadius: 4, color: Colors.blueGrey)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xff63074D))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/recrutment.png",
                            width: size.width < 350 ? 80 : 150,
                          ),
                          Text(
                            "Recruteurs",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Text(
                      "13",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.blueGrey)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/fournisseur.png",
                          width: size.width < 350 ? 80 : 150,
                        ),
                        Text(
                          "Fournisseurs",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Text(
                      "08",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.blueGrey)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/map.png",
                          width: size.width < 350 ? 80 : 150,
                        ),
                        Text(
                          "Ambassadeurs",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Text(
                      "13",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.blueGrey)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/live-chat.png",
                          width: size.width < 350 ? 80 : 150,
                        ),
                        Text(
                          "Messagerie",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Text(
                      "13",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.blueGrey)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.notifications,
                          size: size.width < 350 ? 80 : 150,
                          color: Color(0xff63074D),
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Text(
                      "13",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 4, color: Colors.blueGrey)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.credit_card,
                          size: size.width < 350 ? 80 : 150,
                          color: Color(0xff63074D),
                        ),
                        Text(
                          "Paiements",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -5,
                  right: -5,
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 2, bottom: 2, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0xff63074D))),
                    child: Text(
                      "13",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
