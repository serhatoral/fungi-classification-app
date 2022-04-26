import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fungi_classification/components/card_image.dart';
import 'package:fungi_classification/components/result_page_bottom_container.dart';
import 'package:tflite/tflite.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key, this.image}) : super(key: key);
  final File? image;
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<dynamic>? _prediction;

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/models/mantar_modeli.tflite',
        labels: 'assets/models/labels.txt');
  }

  classify(img) async {
    var output = await Tflite.runModelOnImage(path: img.path);
    setState(() {
      _prediction = output;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      loadModel();
      classify(widget.image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text(
          'SINIFLANDIRMA SONUCU',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: widget.image != null
                  ? CardImage(image: widget.image!)
                  : const Icon(Icons.image_not_supported),
              color: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.transparent,
              child: BottomContainerofResultPage(
                prediction: _prediction,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
