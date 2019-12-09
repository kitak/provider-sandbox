import 'package:flutter/material.dart';

import 'kmj.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'provider-sandbox',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト"),
      ),
      body: Scrollbar(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          children: <Widget>[
            ListTile(
                title: Text(
                    "ChangeNotifierProvider vs ChangeNotifierProvider.value"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        settings: const RouteSettings(name: "/kmj"),
                        builder: (BuildContext context) => Kmj(),
                      ));
                  // TODO
                }),
            ListTile(
              title: Text("TODO"),
            ),
          ],
        ),
      ),
    );
  }
}
