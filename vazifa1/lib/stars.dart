import 'package:dars13_n/main.dart';
import 'package:flutter/material.dart';

class Stars extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StarsState();
  }
}

class _StarsState extends State<Stars> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              setState(() {
                num = 1;
              });
            },
            icon: Icon(
              Icons.star,
              color: num > 0 ? Colors.yellow : Colors.grey,
              size: 40,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                num = 2;
              });
            },
            icon: Icon(
              Icons.star,
              color: num > 1 ? Colors.yellow : Colors.grey,
              size: 40,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                num = 3;
              });
            },
            icon: Icon(
              Icons.star,
              color: num > 2 ? Colors.yellow : Colors.grey,
              size: 40,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                num = 4;
              });
            },
            icon: Icon(
              Icons.star,
              color: num > 3 ? Colors.yellow : Colors.grey,
              size: 40,
            )),
        IconButton(
            onPressed: () {
              setState(() {
                num = 5;
              });
            },
            icon: Icon(
              Icons.star,
              color: num > 4 ? Colors.yellow : Colors.grey,
              size: 40,
            )),
      ],
    );
  }
}
