

import 'package:flutter/material.dart';




class MyAppBar extends StatelessWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: BackButton(
        color: Colors.black,
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(title,
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Image.asset(
            'assets/images/ZoloniIcon.png',
            width: 30,
            height: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

