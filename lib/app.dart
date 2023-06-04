import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/page/page_one.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageOne(),
    );
  }
}
