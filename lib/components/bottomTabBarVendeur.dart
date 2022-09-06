import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const/color.dart';

class BottomTabbarVendeur extends StatefulWidget {
  BottomTabbarVendeur({Key? key, required this.selectedIndex})
      : super(key: key);
  int selectedIndex;

  @override
  State<BottomTabbarVendeur> createState() => _BottomTabbarVendeurState();
}

class _BottomTabbarVendeurState extends State<BottomTabbarVendeur> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        onTap: (value) {
          setState(() {
            widget.selectedIndex = value;
            if (value == 0) {
              Navigator.pushNamed(context, 'ProfilScreen');
            }
            if (value == 1) {
              Navigator.pushNamed(context, 'ListVendeurs');
            }
            if (value == 2) {
              Navigator.pushNamed(context, 'Statistiques');
            }
            if (value == 3) {
              Navigator.pushNamed(context, 'WalletScreen');
            }
          });
        },
        selectedLabelStyle: const TextStyle(color: blue),
        unselectedLabelStyle: const TextStyle(color: Colors.black87),
        unselectedIconTheme: const IconThemeData(
          color: black,
        ),
        unselectedItemColor: Colors.deepOrangeAccent,
        selectedIconTheme: const IconThemeData(color: blue),
        items: const [
          BottomNavigationBarItem(
            label: ('Profil'),
            icon: FaIcon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: ('statistic'),
            icon: Icon(Icons.group_sharp),
          ),
          BottomNavigationBarItem(
            label: ('Ajouter'),
            icon: FaIcon(Icons.leaderboard),
          ),
          BottomNavigationBarItem(
            label: ('Portefeuille'),
            icon: FaIcon(FontAwesomeIcons.moneyBillWave),
          ),
        ]);
  }
}
