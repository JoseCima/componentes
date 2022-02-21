import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[


          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://data.whicdn.com/images/341962388/original.jpg'),
              radius: 25.0,
            ),
          ),
         

          Container(
            margin: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.pink,
              
            ),
          )
        ],
      ),
      body:Center(
        child:FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://media-cdn.laodong.vn/storage/newsportal/2021/3/14/888920/Rose.JPG?w=960&crop=auto&scale=both'),
          fadeInDuration: Duration(milliseconds: 200),
          ),
        
      ),
    );
  }
}