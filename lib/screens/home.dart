import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<bool> selects = [false, false, false, false, false, false];
  
Widget title = const Text("Minhas Linguagens");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title), 
      body: Column(
        children: [
          Wrap(
            spacing: 10,
            children: [
              ChoiceChip(
                label: const Text("Android Nativo"),
                selected: selects[0],
                onSelected: (value){
                  setState(() {
                    selects[0] = value;
                  });
                },
              ),
            ],
          ),
          Expanded(child: ListView(children: buildItemsList(),))
        ],
      ),
    );
  }

  List<Widget> buildItemsList(){
    return [
      if(selects[0]) Card(
        child: ListTile(
          leading: Icon(Icons.android),
          title: Text("Android Nativo"),
          subtitle: Text("Linguagens C, Java, Kotlin"),
        ),
      )
    ];
  }

}