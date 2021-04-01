import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _elementIndex = 0;

  void answerQuestion() {
    setState(() {
      _elementIndex += 1;
    });
    
    print(_elementIndex);
  }

  @override
  Widget build(BuildContext buildContext) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First page title name'),
          ),
          body: Column(
            children: [
              Text(
                question[_elementIndex],
              ),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: () => print('Answer 2 chosen!')),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('Answer 3 chosen!');
                  }),
            ],
          )),
    );
  }
}
