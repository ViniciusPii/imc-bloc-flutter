import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cálculo de Imc'),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: CupertinoTextField(
              placeholder: 'Altura (cm)',
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: CupertinoTextField(
              placeholder: 'Peso (kg)',
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Você está fora de forma',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              height: 45,
              child: CupertinoButton.filled(
                onPressed: () {},
                child: Text(
                  'Calcular',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
