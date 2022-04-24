import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fungi_classification/components/home_page_button.dart';
import 'package:fungi_classification/constants/texts.dart';
import 'package:fungi_classification/screens/result_page.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ImagePicker picker = ImagePicker();
  File? image;
  
  void transferData(XFile? img) {
    image = File(img!.path);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultPage(
                  image: image,
                )));
  }


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
              children: [
                HomePageButton(
                  title: "Kamera",
                  icon: Icons.camera,
                  onPress: () async {
                    final XFile? photo = await picker.pickImage(source: ImageSource.camera);
                    transferData(photo);
                  },
                ),
                HomePageButton(
                  title: "Galeri",
                  icon: Icons.image_search,
                  onPress: () async {
                   final XFile? img = await picker.pickImage(source: ImageSource.gallery);
                   transferData(img);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
