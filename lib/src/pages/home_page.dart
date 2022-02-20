import 'package:flutter/material.dart';

class  HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Componentes By Jose Cima'),
      ),
      body: _lista(), 
    );
  }

 Widget  _lista() {
   
     return ListView(
       children: _listItems(),
     );
  }

  List<Widget> _listItems() {
    return[
      ListTile(title:Text('Hola Mundo')),
      Divider(color:Colors.lightBlue),
      ListTile(title:Text('Hola Mundo')),
       Divider(color:Colors.lightBlue),
      ListTile(title:Text('Hola Mundo')),
    ];
  }
}