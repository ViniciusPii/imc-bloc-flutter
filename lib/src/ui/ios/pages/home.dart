import 'package:flutter/cupertino.dart';
import 'package:imc_bloc/src/blocs/imc_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bloc = new ImcBloc();

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
              controller: bloc.heightCtrl,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: CupertinoTextField(
              controller: bloc.weightCtrl,
              placeholder: 'Peso (kg)',
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              bloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Container(
              height: 45,
              child: CupertinoButton.filled(
                onPressed: () {
                  setState(() {
                    bloc.calculate(context);
                  });
                },
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
