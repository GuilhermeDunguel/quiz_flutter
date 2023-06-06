import 'package:flutter/material.dart';


class resultPage extends StatelessWidget {

  String finalizationText;
  String totalPoints;
  final void Function() handleFinish;

  resultPage(this.finalizationText, this.totalPoints, this.handleFinish);

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(finalizationText, 
            style: const TextStyle(
              fontSize: 28,
            )),
          ),
          Text('Você tirou: $totalPoints pontos.',
          style:
            const TextStyle(
              fontSize: 20,
            )
          ),
          ElevatedButton(
            onPressed: handleFinish,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black87,
              backgroundColor: Colors.orange,
            ), 
            child: const Text('Reiniciar'),
          )
        ],
      );
  }
}
