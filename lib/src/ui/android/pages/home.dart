import 'package:flutter/material.dart';
import 'package:imc_bloc/src/blocs/imc_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo de IMC'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextFormField(
              controller: bloc.heightCtrl,
              decoration: InputDecoration(
                labelText: 'Altura em (cm)',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextFormField(
              controller: bloc.weightCtrl,
              decoration: InputDecoration(
                labelText: 'Peso em (cm)',
              ),
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
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  setState(() {
                    bloc.calculate(context);
                  });
                },
                child: Text(
                  'Calcular',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
