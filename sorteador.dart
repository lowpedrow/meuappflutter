import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() => runApp(Sorteador());


class Sorteador extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
     title: 'Sorteador de Número',
     theme: ThemeData(
     primarySwatch: Colors.deepOrange, 
     ),
     home: SorteioHomePage(),
    );
  }
}

 class SorteioHomePage extends StatefulWidget {
  @override
  _SorteioHomePageState createState() => _SorteioHomePageState();
  }

  class _SorteioHomePageState extends State<SorteioHomePage>{
    int _numeroSorteado = 0;
    
    void _sortearNumeros(){
       setState(() {
       _numeroSorteado = Random().nextInt(100) + 1; //Números de 1 até 100
      });
    }

    @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorteador de Número'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'O número sorteado é: ',
            style: TextStyle(fontSize: 24.0),
          ),
          Text(
            '$_numeroSorteado',
            style: TextStyle(fontSize: 48.0, fontWeight:FontWeight.bold),
          ),
        SizedBox(height: 30.0),
        ElevatedButton(
          onPressed: _sortearNumeros,
          child: Text('Sortear número'),
          ),
        ],
        ), 
        ),
    );
  }
}