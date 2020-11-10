import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              decoration: InputDecoration(
                labelText: 'Altura em (cm)',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Peso em (cm)',
              ),
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
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
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
