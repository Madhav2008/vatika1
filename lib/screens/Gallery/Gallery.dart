// ignore_for_file: file_names, use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white30,
        child: new GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <String>[
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
              '../assets/images/Logo.png',
            ].map((String url) {
              return ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)),
                child: GridTile(
                  child: new Image.asset(url, fit: BoxFit.cover),
                ),
              );
            }).toList()),
      ),
    );
  }
}
