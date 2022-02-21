import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('CARDS'),

     ),
     body: ListView(
       padding: EdgeInsets.all(10.0),
       children: <Widget>[
         _cardTipo1()
       ],
     ),
    );

  }

  Widget _cardTipo1(){

    return Card(
      child: Column(
       children: <Widget> [
         ListTile(
           leading: Icon(Icons.photo_album, color: Colors.pink),
           title: Text('Soy el título de esta tarjeta'),
           subtitle: Text('Este es un ejemplo de subtitulo'),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget> [
           TextButton(
            onPressed: (){},
            child: Text('Cancelar'),
            ),
            TextButton(
               onPressed: (){},
               child: Text('Ok'),
               )
         ],
         )
       ],
      ),
    );
  }
}