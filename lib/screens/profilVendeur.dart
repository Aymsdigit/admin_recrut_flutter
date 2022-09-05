import 'package:fl_third_project/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilVendeur extends StatefulWidget {
  const ProfilVendeur({Key? key}) : super(key: key);

  @override
  State<ProfilVendeur> createState() => _ProfilVendeurState();
}

class _ProfilVendeurState extends State<ProfilVendeur> {
  int _count = 0;
  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  double rating = 0;
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
          title:
              const Text('Mon profil', style: TextStyle(color: Colors.black)),
          actions: [
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
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
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black)),
                          ],
                        ),
                      ),
                    ])
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              decoration: const BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width < 350 ? size.width / 4 : size.width / 3,
                      height:
                          size.width < 350 ? size.width / 4 : size.width / 3,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/profil/6.png')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              width: size.width < 350 ? 2 : 4,
                              color: Colors.white)),
                    ),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Remail Kouadio",
                          style: TextStyle(
                              fontSize: size.width < 350 ? 15 : 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Inscrit le 21/10/2021",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width < 350 ? 10 : 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.width < 350 ? 20 : 28.0,
                  left: size.width < 350 ? 20 : 40,
                  right: size.width < 350 ? 20 : 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/civ.png",
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("Abidjan, yopougon",
                                  style: TextStyle(
                                      fontSize: size.width < 350 ? 12 : 15)),
                            ],
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.briefcase,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text("Abidjan, yopougon",
                                  style: TextStyle(
                                      fontSize: size.width < 350 ? 12 : 15)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.envelope,
                                size: 18,
                              ),
                              SizedBox(
                                width: size.width < 350 ? 5 : 20,
                              ),
                              Text("jhondoe@gmail.com",
                                  style: TextStyle(
                                      fontSize: size.width < 350 ? 12 : 20)),
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const FaIcon(FontAwesomeIcons.phone, size: 18),
                              SizedBox(
                                width: size.width < 350 ? 5 : 20,
                              ),
                              Text(
                                "0759028545",
                                style: TextStyle(
                                    fontSize: size.width < 350 ? 12 : 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  updateOnDrag: true,
                                  minRating: 1,
                                  itemCount: 7,
                                  itemSize: 18,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    this.rating = rating;
                                  },
                                ),
                                IconButton(
                                    tooltip: "Valider les étoiles",
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text("Annuler")),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text("Confirmer"))
                                          ],
                                          title: Text("Envoyer des étoiles"),
                                          content: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                "$rating",
                                                style: TextStyle(
                                                    color: Colors.amber),
                                              ),
                                              Text(rating == 1
                                                  ? " étoile"
                                                  : " étoiles")
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                    )),
                              ],
                            ),
                            Row(
                              children: [
                                Text("(X3)"),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.black38,
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              color: blueBold,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recruteur", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/profil/8.png")),
                      Column(
                        children: [
                          Text("3/5", style: TextStyle(color: Colors.white)),
                          Text("Michael Kouamé",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                          Text("Membre depuis le 07 fév 2020",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        ],
                      ),
                      CircleAvatar(
                        radius: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));

    void showRating() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Confirmation d'étoiles"),
          ),
        );
  }
}
