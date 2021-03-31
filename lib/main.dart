import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var elementIndex = 0;

  void answerQuestion() {
    elementIndex += 1;
    print(elementIndex);
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
                question[0],
              ),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
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
