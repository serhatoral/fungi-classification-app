import 'package:flutter/material.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({Key? key, required this.title, this.icon, this.onPress}) : super(key: key);
  final String title;
  final IconData? icon;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPress,
      icon: Icon(icon),
      label:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Text(
          title,
          style:const TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
      ),
    );
  }
}
