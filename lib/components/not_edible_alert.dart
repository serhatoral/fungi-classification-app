import 'package:flutter/material.dart';

class NotEdibleAlert extends StatelessWidget {
  const NotEdibleAlert({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/icons8-notedible-48.png', height: 45, width: 50, );
  }
}