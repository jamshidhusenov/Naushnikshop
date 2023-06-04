import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
      body: Row(
        children: [
          Container(
            width: 100,
            height: MediaQuery.sizeOf(context).height,
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width - 100,
           child: ListView(
             children: [
               Container(
                 height: 600,
                 color: Colors.red,
               ),Container(
                 height: 600,
                 color: Colors.blue,
               ),Container(
                 height: 600,
                 color: Colors.green,
               ),Container(
                 height: 600,
                 color: Colors.yellowAccent,
               ),
             ],
           ),
          )






        ],
      ),
    );
  }
}



