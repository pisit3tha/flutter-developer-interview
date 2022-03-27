import 'package:flutter/material.dart';

import 'album_card.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print(_counter++);
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ONE OK ROCK')),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            AlbumCard(
              imagePath: 'assets/images/Eye-of-the-Storm.png',
              year: '2019',
              albumName: 'EYE OF THE STORM',
            ),
            AlbumCard(
              imagePath: 'assets/images/Ambitions.png',
              year: '2017',
              albumName: 'Ambition',
            ),
            AlbumCard(
              imagePath: 'assets/images/Ambitions.png',
              year: '2017',
              albumName: 'Ambition',
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
