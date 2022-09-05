import 'package:flutter/material.dart';

class VendeurDashboard extends StatefulWidget {
  const VendeurDashboard({Key? key}) : super(key: key);

  @override
  State<VendeurDashboard> createState() => _VendeurDashboardState();
}

class _VendeurDashboardState extends State<VendeurDashboard> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
