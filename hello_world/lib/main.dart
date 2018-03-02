import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// => One line functions or methods
void main() => runApp(new MyApp());

//Even app is a widget, in Flutter most everything is a Widget
class MyApp extends StatelessWidget {
  @override
  //A widget’s main job is to provide a build() method
  // that describes how to display the widget in terms of other, lower level widgets.
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    //Material, base Widget with Material design standard
    return new MaterialApp(
      title: 'Welcome to Flutter',
      //Scaffold widget,  from the Material library, provides a default app bar,
      // title, and a body property that holds the widget tree for the home screen.
      // The widget subtree can be quite complex.
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
