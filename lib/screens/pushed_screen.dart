import 'package:flutter/material.dart';

class PushedScreen extends StatelessWidget {
  static const route = '/first/pushed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pushed screen')),
      body: Center(
        child: Text('Hello world!'),
      ),
    );
  }
}
