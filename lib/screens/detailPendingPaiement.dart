import 'package:fl_third_project/const/color.dart';
import 'package:fl_third_project/model/userData.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPendingPaiement extends StatefulWidget {
  const DetailPendingPaiement({Key? key}) : super(key: key);

  @override
  State<DetailPendingPaiement> createState() => _DetailPendingPaiementState();
}

class _DetailPendingPaiementState extends State<DetailPendingPaiement> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Détails paiement",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/profil/6.png"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Michael Kouamé",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Moyen de paiement".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          users[2].moyenPaiemet,
                          style: TextStyle(fontSize: 10, color: blue),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Numero de paiement".toUpperCase(),
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          users[2].numero,
                          style: TextStyle(fontSize: 12, color: blue),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Montant à payer".toUpperCase(),
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          users[2].montant,
                          style: TextStyle(fontSize: 10, color: blue),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date et heure".toUpperCase(),
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          users[2].date,
                          style: TextStyle(fontSize: 12, color: blue),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider()
              ],
            ),
            Column(
              children: [
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text("Historique",
                            style: TextStyle(color: Colors.black54))),
                    VerticalDivider(
                      color: blue,
                      thickness: 5,
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {
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
                              height: 500,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Text('Paiement'.toUpperCase()),
                                    Divider(),
                                    SizedBox(height: 15),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Montant à payer"),
                                              SizedBox(height: 10),
                                              Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: TextFormField(
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      hintText: "13 000",
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10),
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text("Références de paiement"),
                                              SizedBox(height: 10),
                                              Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: grey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10),
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: size.width,
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: blue,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Text(
                                              "Valider le paiement",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "Marquer payé",
                        style: TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
