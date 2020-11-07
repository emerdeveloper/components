
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainerPage extends StatefulWidget {

  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {

  Timer timer;
  bool _isPlay = false;
  double _height  = 50.0;
  double _width   = 50.0;
  Color _color    = Colors.pink;

  Icon _floatingICon = Icon(Icons.play_circle_outline_rounded);
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor Animado')
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          )),
      ),
      floatingActionButton: FloatingActionButton(
        child: _floatingICon,
        onPressed: _onPressButton,
      ),
    );
  }

  void _initAnmation() {
    _startTimeout();
  }

  Timer _startTimeout() {
    //var duration = milliseconds == null ? timeout : ms * milliseconds;
    _changeAnimationProperties();
    var duration = Duration(seconds: 1);
    timer = Timer(duration, _handleTimeout);
    return timer;
  }

  // callback function
  void _handleTimeout() {
    _startTimeout();
  }

  void _changeAnimationProperties() {      
      Random random = Random();

        setState(() {
          _height = random.nextInt(300).toDouble();
          _width = random.nextInt(300).toDouble();
          _color = Color.fromRGBO(
            random.nextInt(255),
            random.nextInt(255),
            random.nextInt(255),
            1);
          _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
        });
  }

  void _onPressButton() {
    if (!_isPlay) {
        _initAnmation();
        _setStopIcon();
        _isPlay = true;
      } else {
        _setPlayIcon();
        _stopTimer();
        _isPlay = false;
      }
  }

  void _stopTimer() {
    if (timer.isActive) timer.cancel();
  }

  void _setPlayIcon() {
    setState(() {
      _floatingICon = Icon(Icons.play_circle_outline_rounded);
    });
  }

  void _setStopIcon() {
    setState(() {
        _floatingICon = Icon(Icons.stop_circle_outlined);
    });
  }
}