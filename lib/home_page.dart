import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  int num = 108;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial_App"),
      ),
      body: Center(
        child: Container(
          child: Text("Om ganeshay namah $num"),
        ),
      ),
    drawer: Drawer(),
    );
  }
}

