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
         _cardTipo1(),
         SizedBox(height: 30.0),
         _cardTipo2(),
         SizedBox(height: 30.0),
          _cardTipo1(),
         SizedBox(height: 30.0),
         _cardTipo2(),
         SizedBox(height: 30.0),
          _cardTipo1(),
         SizedBox(height: 30.0),
         _cardTipo2(),
         SizedBox(height: 30.0),
          _cardTipo1(),
         SizedBox(height: 30.0),
         _cardTipo2(),
         SizedBox(height: 30.0),
       ],
     ),
    );

  }

  Widget _cardTipo1(){

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  Widget _cardTipo2(){
    final card = Container(
      
      child: Column(
        children: <Widget> [


          FadeInImage(
            image: NetworkImage('https://www.10wallpaper.com/wallpaper/medium/1501/sunset_winter_shadows-HD_Widescreen_Wallpaper_medium.jpg'),
            placeholder: AssetImage('assets/loading.gif'), 
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            
            ),
        // Image(
         //  image: NetworkImage('https://www.creativefabrica.com/wp-content/uploads/2021/06/12/mountain-landscape-illustration-design-b-Graphics-13326021-1.jpg'),
        // ),
         Container(
           
           padding: EdgeInsets.all(10.0),
           child: Text('Este es un ejemplo de pie de imagen'),
           
           
           )
          
      ],
      ),
    );

    return Container(
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color:Color.fromARGB(255, 243, 209, 219),
        
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
          )
        ]

      ),

       child: ClipRRect(
         borderRadius: BorderRadius.circular(30.0),
         child: card,
       ),
      );
  }

}

