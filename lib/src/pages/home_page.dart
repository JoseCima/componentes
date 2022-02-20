import 'package:flutter/material.dart';

import '../providers/menu_provider.dart';

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
   

   //print(menuProvider.opciones);
   //menuProvider.cargarData()
   return FutureBuilder(
     future: menuProvider.cargarData(),
     initialData: [],
     builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ){

      
       return ListView(
       children: _listItems( snapshot.data, context),
       );
        
     },
   );


     //
  }

  List<Widget> _listItems(data, context) {
    
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title:Text(opt['texto']),
        leading: Icon(Icons.account_circle, color: Colors.pink),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.pink),
        onTap:(){

        }
      );

      opciones..add(widgetTemp)
      ..add(Divider());
     });

     return opciones;
  }
}