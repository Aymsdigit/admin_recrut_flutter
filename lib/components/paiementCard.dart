// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class PaiementCard extends StatefulWidget {
  PaiementCard(
      {Key? key,
      required this.StatutColor,
      required this.statut,
      required this.montant,
      required this.itemCount,
      required this.name,
      required this.value,
      required this.profilPicture,
      required this.CardColor})
      : super(key: key);
  int itemCount;
  String name;
  Color StatutColor;
  String statut;
  String montant;
  String profilPicture;
  Widget value;
  Color CardColor;
  @override
  State<PaiementCard> createState() => _PaiementCardState();
}

class _PaiementCardState extends State<PaiementCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: size.width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: widget.CardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(widget.profilPicture),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: size.width / 2.3,
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width < 350 ? 15 : 25),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                widget.montant,
                                style: TextStyle(
                                    fontSize: 12, color: widget.StatutColor),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "CFA",
                                style: TextStyle(
                                    fontSize: 12, color: widget.StatutColor),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                widget.statut,
                                style: TextStyle(
                                    fontSize: 12, color: widget.StatutColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: widget.value,
            )
          ],
        ),
      ),
    );
  }
}
