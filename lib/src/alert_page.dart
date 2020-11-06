import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert(context))
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
  
  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => 
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        title: Text('Alerta'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Este es el contenido de la Alerta'),
            FlutterLogo(size: 100.0)
          ]
        ),
        actions: <Widget>[
          FlatButton(onPressed: () => Navigator.of(context).pop(), 
          child: Text('Cancelar')),
          FlatButton(onPressed: () => Navigator.of(context).pop(),
          child: Text('Aceptar'))
        ],
      ),
      );
  }
}