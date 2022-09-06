import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const/color.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.copy,
                  color: Colors.black,
                  size: size.width < 350 ? 15 : 35,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.download,
                  color: Colors.black,
                  size: size.width < 350 ? 15 : 35,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: size.width < 350 ? 15 : 35,
                ))
          ],
          title: Text(
            "Aperçu",
            style: TextStyle(
                fontSize: size.width < 350 ? 15 : 20, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height / 3.5,
                width: size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            'assets/images/Nouveau-MacBook-Air-Apple-avis-840x400.jpg')),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width < 350
                          ? size.height / 6
                          : size.height / 4.5,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              width: 150,
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/Nouveau-MacBook-Air-Apple-avis-840x400.jpg')),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Ordinateur Portable Hp Folio',
                        style: TextStyle(
                            fontSize: size.width < 350 ? 15 : 25,
                            fontWeight: FontWeight.bold)),
                    Text(
                        'This is the little description about this product on bottom',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: size.width < 350 ? 12 : 25,
                            color: Colors.black87)),
                    SizedBox(height: 20),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black45,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Caractéristiques principales"
                                    .toUpperCase()),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, bottom: 10),
                                  child: Divider(
                                    height: 10,
                                    thickness: 2,
                                    color: Colors.black45,
                                  ),
                                ),
                                Text("Dell Triplex 3060 Micro Desktop",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18)),
                                Text("Intel 6-Core i5-8500T 2.1GHz Upto 3.5GHz",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18)),
                                Text("8GB DDR4 RAM",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18)),
                                Text("500GB DD",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18)),
                                Text("HDMI, Display Port",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18)),
                                Text("WI-Fi, Bluetooth",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18)),
                                Text("Windows 10 Pro",
                                    style: TextStyle(
                                        fontSize: size.width < 350 ? 12 : 18))
                              ]),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black45,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Informations".toUpperCase()),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, bottom: 10),
                                  child: Divider(
                                    height: 10,
                                    thickness: 2,
                                    color: Colors.black45,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Catégorie",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 350 ? 12 : 15)),
                                    Text(
                                      "Informatique",
                                      style: TextStyle(
                                          color: blue,
                                          fontSize: size.width < 350 ? 12 : 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Sous-catégorie",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 350 ? 12 : 15)),
                                    Text(
                                      "Ordinateur portable",
                                      style: TextStyle(
                                          color: blue,
                                          fontSize: size.width < 350 ? 12 : 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Etat du produit",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 350 ? 12 : 15)),
                                    Text(
                                      "Importer",
                                      style: TextStyle(
                                          color: blue,
                                          fontSize: size.width < 350 ? 12 : 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Localisation",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 350 ? 12 : 15)),
                                    Text(
                                      "Yamoussoukro, 220 lgt",
                                      style: TextStyle(
                                          color: blue,
                                          fontSize: size.width < 350 ? 12 : 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Nombre de pièces",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 350 ? 12 : 15)),
                                    Text(
                                      "8 pièces",
                                      style: TextStyle(
                                          color: blue,
                                          fontSize: size.width < 350 ? 12 : 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Numéro de téléphone",
                                        style: TextStyle(
                                            fontSize:
                                                size.width < 350 ? 12 : 15)),
                                    Text(
                                      "+225 59028545",
                                      style: TextStyle(
                                          color: blue,
                                          fontSize: size.width < 350 ? 12 : 15),
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Prix officiel".toUpperCase(),
                                style: TextStyle(
                                    fontSize: size.width < 350 ? 12 : 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "450 000",
                                style: TextStyle(
                                    color: blue,
                                    fontSize: size.width < 350 ? 12 : 15),
                              )
                            ],
                          ),
                          VerticalDivider(
                            thickness: 2,
                            color: Colors.black45,
                          ),
                          Row(
                            children: [
                              Text(
                                "Prix partenaire".toUpperCase(),
                                style: TextStyle(
                                    fontSize: size.width < 350 ? 12 : 15),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "400 000",
                                style: TextStyle(
                                    color: blue,
                                    fontSize: size.width < 350 ? 12 : 15),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
