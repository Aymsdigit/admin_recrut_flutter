import 'package:flutter/material.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({Key? key}) : super(key: key);

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Sélectionnez un pays",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 5,
              thickness: 2,
              indent: 130,
              endIndent: 130,
            ),
            Expanded(
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 30,
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "Dashboard");
                                },
                                child: Container(
                                    height: 75,
                                    width: 75,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(2, 2),
                                              blurRadius: 8,
                                              color: Colors.grey)
                                        ],
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/images/civ.png")))),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Ivory Coast".toUpperCase())
                            ],
                          ),
                          Positioned(
                            right: 50,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Text(
                                "11",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 75,
                                  width: 75,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(2, 2),
                                            blurRadius: 8,
                                            color: Colors.grey)
                                      ],
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/togo.png")))),
                              SizedBox(
                                height: 10,
                              ),
                              Text("togo".toUpperCase())
                            ],
                          ),
                          Positioned(
                            right: 65,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Text(
                                "8",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 75,
                                  width: 75,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(2, 2),
                                            blurRadius: 8,
                                            color: Colors.grey)
                                      ],
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/cameroun.png")))),
                              SizedBox(
                                height: 10,
                              ),
                              Text("cameroun".toUpperCase())
                            ],
                          ),
                          Positioned(
                            right: 60,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Text(
                                "5",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                    height: 75,
                                    width: 75,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(2, 2),
                                              blurRadius: 8,
                                              color: Colors.grey)
                                        ],
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/images/nigeria.png")))),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Nigeria".toUpperCase())
                              ],
                            ),
                            Positioned(
                              right: 55,
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 10,
                                child: Text(
                                  "2",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
