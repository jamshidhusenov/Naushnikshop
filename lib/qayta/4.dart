import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        prototypeItem: Container(height: 350,color: Colors.purple,),
        children: [
          Container(
          ),Container(
            height: 600,
            color: Colors.blue,
          ),Container(
            height: 600,
            color: Colors.green,
          ),Container(
            height: 600,
            color: Colors.yellowAccent,
          ),Container(
            height: 600,
            color: Colors.black12,
          ),Container(
            height: 600,
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}


