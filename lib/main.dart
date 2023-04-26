import 'package:flutter/material.dart';

void main() => runApp(CalculadoraApp());

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALCULADORA',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: CalculadoraHomePage(),
    );
  }
}

class CalculadoraHomePage extends StatefulWidget {
  @override
  _CalculadoraHomePageState createState() => _CalculadoraHomePageState();
}

class _CalculadoraHomePageState extends State<CalculadoraHomePage> {
  TextEditingController _controllerNumero1 = TextEditingController();
  TextEditingController _controllerNumero2 = TextEditingController();
  int _resultado = 0;

  void _sumar() {
    setState(() {
      int numero1 = int.tryParse(_controllerNumero1.text) ?? 0;
      int numero2 = int.tryParse(_controllerNumero2.text) ?? 0;
      _resultado = numero1 + numero2;
    });
  }

  void _multiplicar() {
    setState(() {
      int numero1 = int.tryParse(_controllerNumero1.text) ?? 0;
      int numero2 = int.tryParse(_controllerNumero2.text) ?? 0;
      _resultado = numero1 * numero2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULADORA'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _controllerNumero1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Número 1',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              controller: _controllerNumero2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Número 2',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _sumar,
            child: Text('Sumar'),
          ),
          ElevatedButton(
            onPressed: _multiplicar,
            child: Text('Multiplicar'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Resultado: $_resultado',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ],
      ),
    );
  }
}
