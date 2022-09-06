import 'package:fl_third_project/components/searchBar.dart';
import 'package:fl_third_project/const/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilAppbar extends StatefulWidget {
  ProfilAppbar({Key? key, required this.appTitle}) : super(key: key);
  String appTitle;
  @override
  State<ProfilAppbar> createState() => _ProfilAppbarState();
}

class _ProfilAppbarState extends State<ProfilAppbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                  Text(
                    widget.appTitle,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showSearch(
                            context: context, delegate: CustomSearchDelegate());
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black87,
                      )),
                  PopupMenuButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                      constraints: const BoxConstraints(minWidth: 80),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                            PopupMenuItem(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.list,
                                    size: 12,
                                  ),
                                  const Text(
                                    'Trier',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
              )
            ],
          ),
        )
      ],
    );
  }
}
