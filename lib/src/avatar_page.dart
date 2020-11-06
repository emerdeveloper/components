import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i1.wp.com/www.bitme.gg/wp-content/uploads/2020/04/Dragon-Ball_-El-di%CC%81a-que-Goku-nin%CC%83o-conocio%CC%81-a-Goku-adulto-2.jpg?w=1280&ssl=1'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              child: Text('EM'),
              backgroundColor: Colors.deepPurple[600],
              foregroundColor: Colors.white,
            )
          )
        ]
      ),
      body: Center(
        child: FadeInImage(
          fit: BoxFit.cover,
          height: 300.0,
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://areajugones.sport.es/wp-content/uploads/2020/04/gokhan-dragon-ball-z-pottara-goku-gohan.jpg')),
      ),
    );
  }
  
}