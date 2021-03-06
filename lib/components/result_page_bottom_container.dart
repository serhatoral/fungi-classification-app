import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fungi_classification/components/edible_alert.dart';
import 'package:fungi_classification/components/not_edible_alert.dart';
import 'package:fungi_classification/components/poison_alert.dart';
import 'package:fungi_classification/components/unknown_alert.dart';
import 'package:fungi_classification/constants/fungi_dictionary.dart';

class BottomContainerofResultPage extends StatelessWidget {
  const BottomContainerofResultPage({Key? key, required this.prediction})
      : super(key: key);

  final List<dynamic>? prediction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
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
            prediction != null
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [          
                    Text(
                        FungiDictionary.nameSplit('${prediction![0]['label']}'),
                        style: const TextStyle(fontSize: 20),
                      ),
                      returnAlert('${prediction![0]['label']}')
                  ],
                )
                : const Text('null'),
            const SizedBox(
              height: 25,
            ),
            prediction != null
                ? Text(
                    FungiDictionary.info['${prediction![0]['label']}']!,
                    textAlign: TextAlign.center,
                    style:const TextStyle(fontFamily:'SourceSansPro', fontSize: 16,),
                  )
                : const Text(""),
          ],
        ),
      ),
    );
  }

  returnAlert(fungiName){
      if (FungiDictionary.poisonousMushrooms.contains(fungiName)) {
        return const PoisonAlert();
      } else {
        if(FungiDictionary.unknownMushrooms.contains(fungiName)){
          return const UnknownAlert();
        }else{
          if(FungiDictionary.notEdibleMushrooms.contains(fungiName)){
            return const NotEdibleAlert();
          } else{
            return const EdibleAlert();
          }
        }
      }
  }



}
