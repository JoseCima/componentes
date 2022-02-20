import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {


final opciones  = ['Uno', 'Dos','tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp by JoseCima'),
      ),
      body: ListView(
        children: _crearItems()
      ),
    );
      
  }



   List<Widget> _crearItems(){
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
          ..add(Divider(color:Colors.pink));
    }
    return lista;
  }
 


  List<Widget> _crearItemsCorta(){

    return [];
  }

}
