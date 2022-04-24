import 'package:flutter/material.dart';

class BottomContainerofResultPage extends StatelessWidget {
  const BottomContainerofResultPage({Key? key, this.prediction}) : super(key: key);

 final List<dynamic>? prediction;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
             prediction!=null ? Text('${prediction![0]['label']}') : const Text('null'),
            const SizedBox(
              height: 25,
            ),
            Text('mdsfjsdfj' * 8),
          ],
        ),
      ),
    );
  }
}
