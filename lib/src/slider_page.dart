
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 200.0;
  bool _isSliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            _createImage(),
          ]
        )
      )
    );
  }

  Widget _createSlider() {
    return Slider(
      value: _sliderValue,
      activeColor: Colors.indigoAccent,
      label: '$_sliderValue',
      min: 10.0,
      max: 400.0,
      onChanged: ( !_isSliderEnable ) ? null : 
      (value) {
        setState(() {
          _sliderValue = value;
        });
      }
      );
  }

   Widget _createCheckbox() {
    return CheckboxListTile(
      title: Text('Habilitar/Habilitar Slider'),
      value: _isSliderEnable, 
      onChanged: (isChanged) {
        setState(() {
          _isSliderEnable = isChanged;
        });
      }
      );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Habilitar/Habilitar Slider'),
      value: _isSliderEnable, 
      onChanged: (isChanged) {
        setState(() {
          _isSliderEnable = isChanged;
        });
      }
      );
  }

  Widget _createImage() {
    return Expanded(
            child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage('https://i.pinimg.com/originals/79/50/5a/79505a6d767f4dca497c395f36def89e.jpg'),
              width: _sliderValue,
              fit: BoxFit.contain,
              ),
    );
  }

}