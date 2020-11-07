
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campos de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        children: <Widget>[
          _createTextField(),
          Divider(),
          _createEmailField(),
          Divider(),
          _createPasswordField()
        ],
      ),
    );
  }

  Widget _createTextField() {
    return TextField(
      //autofocus: true,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('letras ${text.length}'),
        hintText: 'Digita el nombre',
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle_outlined)
      ),
      onChanged: (text) {
        setState(() {
          this.text = text;
        });
      });
  }

  Widget _createEmailField() {
    return TextField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Digita el correo',
        labelText: 'Correo',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email_outlined)
      )
      );
  }

  Widget _createPasswordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        hintText: 'Digita la contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.lock_outline_rounded),
        icon: Icon(Icons.lock_outline_rounded)
      )
      );
  }
}