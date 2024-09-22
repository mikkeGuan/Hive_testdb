import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  //reference to box
  final _testBox = Hive.box("testbox");

  //Methods
  void writeData() {
    _testBox.put(10, ["Ruichao", 26 , "ss"]);
  }

  void readData() {
    print(_testBox.get(10));

  }
  void deleteData() {
    _testBox.delete(1);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        MaterialButton(onPressed: writeData,
        child: Text("Write"),
          color: Colors.blueAccent,
        ),MaterialButton(onPressed: readData,
          child: Text("Read"),
          color: Colors.amberAccent,
        ),MaterialButton(onPressed: deleteData,
          child: Text("Delete"),
          color: Colors.redAccent,
        ),

      ],
      ),
      ),
    );
  }
}
