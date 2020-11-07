
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  TextEditingController editingController = TextEditingController();
  String text   = '';
  String selectedOption;
  List<String> techniqueList =  ['Kaioken', 'Kame Hame Ha', 'Genkidama', 'Teletransportacion', 'Golpe del dragon', 'Taioken', 'Kienzan'];


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
          _createPasswordField(),
          Divider(),
          _createDateField(),
          Divider(),
          _createDropdown(),
          Divider(),
          buildDropdownButton()
        ]
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

  Widget _createDateField() {
    return TextField(
      controller: editingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Digita la Fecha de nacimiento',
        labelText: 'Fecha',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today_outlined)
      ),
      onTap: () {
        //Remove focus
        FocusScope.of(context).requestFocus(FocusNode());
        _selectDate(context);
      },
      );
  }

  void _selectDate(BuildContext context) async {
    DateTime datePicked = await showDatePicker(
      context: context, 
      locale: Locale('es', 'ES'),
      initialDate: DateTime.now(), 
      firstDate: DateTime(2018), 
      lastDate: DateTime.now()
      );
      if (datePicked != null) {
        setState(() {
          editingController.text = datePicked.toString();
        });
      }
  }

  List<DropdownMenuItem<String>> getOptions() {
    return techniqueList.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();

  } 

  Widget _createDropdown() {
    return Row(
      children: [
        Icon(Icons.list),
        SizedBox(width: 15.0),
        DropdownButton(
          
          hint: Text('Seleccionar'),
          value: selectedOption,
          items: getOptions(), 
          onChanged: (optionSelected) {
            setState(() {
              selectedOption = optionSelected;
            });
          }
          ),
      ],
    );
  }

  Widget buildDropdownButton() {
  return Container(
  padding: EdgeInsets.symmetric(horizontal: 20),
  child: FormField<String>(
    builder: (FormFieldState<String> state) {
      return InputDecorator(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0))),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("Select Device"),
            value: selectedOption,
            isDense: true,
            onChanged: (newValue) {
              setState(() {
                selectedOption = newValue;
              });
              print(newValue);
            },
            items: getOptions()
          ),
        ),
      );
    },
  ),
);
  }
}