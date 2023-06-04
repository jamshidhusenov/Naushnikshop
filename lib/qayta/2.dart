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
  late final ScrollController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = ScrollController(initialScrollOffset:0);
    controller.addListener(listener);
  }
void listener(){
    debugPrint("controller.position: ${controller.position}");
    debugPrint("controller.offset: ${controller.offset}");
    debugPrint("controller.hasClients: ${controller.hasClients}");
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            for(int i = 0 ; i < 18 ; i ++)
              GestureDetector(
                child: Container(
                  height: 100,
                  color: Colors.primaries[i],
                ),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.animateTo(controller.position.maxScrollExtent, duration: Duration(seconds: 2), curve: Curves.easeInOutBack,);
        },
        elevation: 15,
        child: const Icon(
          Icons.palette,
          color: Colors.white,
        ),
      ),
    );
    controller.dispose();
  }
}




