import 'package:flutter/material.dart';
import 'package:fungi_classification/components/home_page_button.dart';
import 'package:fungi_classification/constants/texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset('assets/images/taxi-569.png', width: 400, height: 400),
            homePageTextTitle,
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 17),
              child: homePageText,
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                HomePageButton(title: "Kamera", icon: Icons.camera),
                HomePageButton(title: "Galeri", icon: Icons.image_search),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
