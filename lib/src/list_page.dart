
import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scrollController = ScrollController();
  int _lastItem = 0;
  bool _isLoadingVisible = false;
  List<int> list = List();

  @override
  void initState() {
    super.initState();

    _increaseList();

    _scrollController.addListener(() {
      
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: [
          _createList(),
          _createLoading()
        ],
      )
    );
  }

  Widget _createList() {
    return RefreshIndicator(
          child: ListView.builder(
          itemCount: list.length,
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            var imageRandon = list[index];
            return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/500/300?random=$imageRandon'),
              height: 250.0,
              );
          }),
          onRefresh: onRefreshImage,
    );
  }

  Future<void> onRefreshImage() {
    return Future.delayed(Duration( seconds: 2))
    .then((value) {
      list.clear();
      _lastItem++;
      _increaseList();
      setState(() { });
    });
  }

  void _increaseList() {
    for (var i = 1; i < 10; i++) {
      _lastItem++;
      list.add(_lastItem);
    }
  }

  Future _fetchData() async {
    
    setState(() { 
      _isLoadingVisible = true;
    });
    
    return Timer(Duration(seconds: 2), _onResponse);
  }

  void _onResponse() {
    _increaseList();
    _isLoadingVisible = false;
    _scrollController.animateTo(
      _scrollController.position.pixels + 100, 
      duration: Duration(milliseconds: 500), 
      curve: Curves.fastOutSlowIn);
    setState(() { });
  }

  Widget _createLoading() {
    return Visibility(
          visible: _isLoadingVisible,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [ Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment(0.0, 0.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: CircularProgressIndicator(),
                  color: Colors.blueGrey[50]
                  )]
            )]
        ),
    );
  }
}