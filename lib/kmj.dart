import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

// ChangeNotifierProvider vs ChangeNotifierProvider.value

class Kmj extends StatefulWidget {
  @override
  _KmjState createState() => _KmjState();
}

class _KmjState extends State<Kmj> {
  final notifier = _Notifier();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChangeNotifierProvider vs ChangeNotifierProvider.value"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: const BoxDecoration(color: Colors.red),
              child: ChangeNotifierProvider<_Notifier>(
                create: (_) {
                  return _Notifier();
                },
                child: _Counter(),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: const BoxDecoration(color: Colors.blue),
              child: ChangeNotifierProvider<_Notifier>.value(
                value: notifier,
                child: _Counter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Consumer<_Notifier>(
          builder: (_, notifier, __) {
            print(notifier.hashCode);
            return Text(notifier.count.toString());
          },
        ),
        MaterialButton(
          child: Text("increment"),
          onPressed: () {
            Provider.of<_Notifier>(context, listen: false).increment();
          },
        ),
      ],
    );
  }
}

class _Notifier extends ChangeNotifier {
  int _count = 0;
  get count {
    return _count;
  }

  increment() {
    _count += 1;
    notifyListeners();
  }
}
