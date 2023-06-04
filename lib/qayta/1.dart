import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        dragStartBehavior: DragStartBehavior.start,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        child: Column(
          children: [
            for (int i = 0; i < 18; i++)
              i == 16
                  ? const Padding(
                      padding: EdgeInsets.all(20),
                      child: TextField(),
                    )
                  : GestureDetector(
                      child: Container(
                        height: 100,
                        color: Colors.primaries[i],
                      ),
                    ),
          ],
        ),
      ),
    );
  }
}
