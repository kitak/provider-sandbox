import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ChangeNotifierProvider vs ChangeNotifierProvider.value

class Kmj extends StatefulWidget {
  @override
  _KmjState createState() => _KmjState();
}

class _KmjState extends State<Kmj> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChangeNotifierProvider vs ChangeNotifierProvider.value"),
      ),
      body: Container(
        child: Center(
          child: Text("Hi!"),
        ),
      ),
    );
  }
}
