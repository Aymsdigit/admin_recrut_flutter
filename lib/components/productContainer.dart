import 'package:flutter/material.dart';

import '../const/color.dart';

class ProductContainer extends StatefulWidget {
  ProductContainer({Key? key, required this.name, required this.image})
      : super(key: key);

  String name;
  String image;
  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            widget.image,
          ),
          Text(
            widget.name,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.check_circle_outlined,
                color: blue,
                size: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
