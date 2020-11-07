import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
        children: <Widget>[
          _cardSimple(),
          _cardWithImage(),
          _createCustomCard()
        ],
      ),
    );
  }

  Widget _cardSimple() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Card simple'),
          subtitle: Text('''Last but not least, 
I wanna thank me
I wanna thank me for believin' in me
I wanna thank me for doing all this hard work
I wanna thank me for having no days off
I wanna thank me for, for never quittin'
I wanna thank me for always bein' a giver And tryna give more than I receive
I wanna thank me for tryna do more right than wrong
I wanna thank me for just bein' me at all times, 
Snoop Dogg, you a bad motherfucker'''),
          leading: Icon(Icons.text_snippet_outlined, color: Colors.blue)
        ),
        Row(children: <Widget>[
          FlatButton(
            child: Text('Cancelar'),
            onPressed: (){ }),
          FlatButton(
            child: Text('Confirmar'),
            onPressed: (){ })
        ],
        mainAxisAlignment: MainAxisAlignment.end
        )
      ],
    ));
  }

  Widget _cardWithImage() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
      children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/109/220/12/dragon-ball-dragon-ball-super-ultra-instinct-son-goku-wallpaper-preview.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            ),
            Container(
              child: Text('Super Kame Hame Ha'),
              padding: EdgeInsets.all(10.0))
          //Image(image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/109/220/12/dragon-ball-dragon-ball-super-ultra-instinct-son-goku-wallpaper-preview.jpg'))
      ]
    ));
  }

  Widget _createCustomCard() {
    var card = Container( child: Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://www.pixel4k.com/wp-content/uploads/2018/11/4k-anime-dragon-ball-super_1541974079.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
          ),
          Container(
            child: Text('Vegeta'),
            padding: EdgeInsets.all(10.0)
          )
      ]
    ));
  
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0))
      ]
    ),
    child: ClipRRect(//Cut content
      child: card,
      borderRadius: BorderRadius.circular(15.0),
      )
  );
  }
  
}