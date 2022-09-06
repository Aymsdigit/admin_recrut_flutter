import 'package:fl_third_project/screens/dashboard.dart';
import 'package:fl_third_project/screens/detailPendingPaiement.dart';
import 'package:fl_third_project/screens/historique.dart';
import 'package:fl_third_project/screens/homePage.dart';
import 'package:fl_third_project/screens/levelStatsScreen.dart';
import 'package:fl_third_project/screens/listVendeurs.dart';
import 'package:fl_third_project/screens/profilScreen.dart';
import 'package:fl_third_project/screens/profilVendeur.dart';
import 'package:fl_third_project/screens/selectCountry.dart';
import 'package:fl_third_project/screens/statistiquesScreen.dart';
import 'package:fl_third_project/screens/vendeurDashboard.dart';
import 'package:fl_third_project/screens/vendeurs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "SelectCountry": (context) => const SelectCountry(),
        "Dashboard": (context) => const Dashboard(),
        "VendeurDashboard": (context) => const VendeurDashboard(),
        "Vendeurs": (context) => const Vendeurs(),
        "ProfilVendeur": (context) => const ProfilVendeur(),
        "DetailPendingPaiement": (context) => const DetailPendingPaiement(),
        "Historique": (context) => const Historique(),
        "ProfilScreen": (context) => const ProfilScreen(),
        "Statistiques": (context) => const Statistiques(),
        "LevelStats": (context) => const LevelStats(),
        "ListVendeurs": (context) => const ListVendeur(),
      },
    );
  }
}
