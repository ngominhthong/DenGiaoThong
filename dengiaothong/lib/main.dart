import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _den = 'green', instruction = 'go';
  Color? instructionColor = Colors.green[500];

  @override
  void initState() {
    _den = 'green';
    instruction = 'go';
    instructionColor = Colors.green[500];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đèn Giao Thông',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Đèn Tín Hiệu'),
          backgroundColor: Colors.teal[300],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(instruction),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.green[batDen('green')],
                  ),
                  Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.orange[batDen('orange')],
                  ),
                  Icon(
                    Icons.circle,
                    size: 100,
                    color: Colors.red[batDen('red')],
                  ),
                ],
              ),
              ElevatedButton(onPressed: chanceDen, child: Text('next'))
            ],
          ),
        ),
      ),
    );
  }

  void chanceDen() {
    setState(() {
      if (_den == 'green') {
        _den = 'orange';
        instruction = 'đi chậm';
        instructionColor = Colors.orange[500];
      } else if (_den == 'orange') {
        _den = 'red';
        instruction = 'ngừng';
        instructionColor = Colors.red[500];
      } else if (_den == 'red') {
        _den = 'green';
        instruction = 'đi';
        instructionColor = Colors.green[500];
      }
    });
  }

  int batDen(String _tinhieu) {
    int i = 100;
    if (_tinhieu == _den) i = 500;
    return i;
  }
}
