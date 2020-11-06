import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        children: <Widget>[
          _cardSimple()
        ],
      ),
    );
  }

  Widget _cardSimple() {
    return Card(child: Column(
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
}