import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fungi_classification/constants/fungi_dictionary.dart';

class BottomContainerofResultPage extends StatelessWidget {
   const BottomContainerofResultPage({Key? key, required this.prediction}) : super(key: key);

  final List<dynamic>? prediction;


  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      decoration:  BoxDecoration(
        color: Colors.yellow[100],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
             prediction!=null ? Text(FungiDictionary.nameSplit('${prediction![0]['label']}'),
              style: const TextStyle(fontSize: 20),) : const Text('null'),
            const SizedBox(
              height: 25,
            ),
            prediction!=null ? Text(FungiDictionary.info['${prediction![0]['label']}']!) : const Text(""),
          ],
        ),
      ),
    );
  }


}
