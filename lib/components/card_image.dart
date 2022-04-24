import 'dart:io';

import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({Key? key, required this.image}) : super(key: key);
  final File image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.file(
        image,
        fit: BoxFit.fill,
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      elevation: 5,
    );
  }
}
