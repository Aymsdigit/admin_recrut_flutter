import 'package:fl_third_project/components/ProfilCard.dart';
import 'package:fl_third_project/const/color.dart';
import 'package:fl_third_project/model/userData.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Historique extends StatefulWidget {
  const Historique({Key? key}) : super(key: key);

  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final arguments = (ModalRoute.of(context)?.settings.arguments as Map);
    String statut = arguments["statut"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Paiement",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
            onPressed: null,
            child: Text(
              "11/Mai/2022",
              style: TextStyle(color: Colors.black),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                Icons.delete_forever_outlined,
                size: 20,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/profil/3.png"),
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
                      "Historique de paiement",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: statut == "isPendingPaid" ? true : false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ProfilCard(
                            date: users[2].date,
                            itemCount: 2,
                            name: "${users[2].montant} CFA",
                            value: Text(users[2].moyenPaiemet.toUpperCase()),
                            profilPicture: "assets/images/mtn.jpg",
                            CardColor: Colors.white),
                        ProfilCard(
                            date: users[1].date,
                            itemCount: 1,
                            name: "${users[1].montant} CFA",
                            value: Text(users[1].moyenPaiemet.toUpperCase()),
                            profilPicture: "assets/images/wave.png",
                            CardColor: Colors.white)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Visibility(
                    visible: statut == "isPaid" ? true : false,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white, boxShadow: shadow),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Montant demandé",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1000 /",
                                    style: TextStyle(color: blue),
                                  ),
                                  Text(
                                    " 7000 CFA",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Moyen de paiement",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/orange.jpg"),
                                  ),
                                  Text(
                                    " Orange".toUpperCase(),
                                    style: TextStyle(color: orange),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Numéro du bénéficiaire",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "0759028545",
                                style: TextStyle(color: blue),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Références",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "G5525566HGKLLL",
                                style: TextStyle(color: blue),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: grey,
                                  boxShadow: shadow,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Détails du marché"),
                                  IconButton(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                      ))
                                ],
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.circleCheck,
                              size: 35,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Paiement effectué",
                              style: TextStyle(color: Colors.green),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: statut != "isPaid"
          ? Text("")
          : Container(
              height: 35,
              decoration: BoxDecoration(
                  border:
                      Border(top: BorderSide(color: Colors.grey, width: 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "Vendeurs",
                            arguments: {'cpteIndex': 2});
                      },
                      child: Text("Retour à la liste",
                          style: TextStyle(color: Colors.black54))),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    width: 2,
                    indent: 5,
                    endIndent: 5,
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "Historique",
                      style: TextStyle(color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
