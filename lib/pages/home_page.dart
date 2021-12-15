import "package:flutter/material.dart";
import 'package:flutter_application_1/wigets/drawer.dart';
import "package:meta/meta.dart";

@immutable
// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  int num = 108;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Tutorial_App"),
      ),
      body: Center(
        child: Material(
          child: Text("Om ganeshay namah $num"),
        ),
      ),
      drawer:const MyDrawer(),
    );
  }
}
