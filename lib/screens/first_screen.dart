import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/screens/pushed_screen.dart';

class FirstScreen extends StatelessWidget {
  static const route = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // Push with bottom navigation visible
                Navigator.of(
                  context,
                  rootNavigator: false,
                ).pushNamed(PushedScreen.route);
              },
              child: Text('Push route with bottom bar'),
            ),
            RaisedButton(
              onPressed: () {
                // Push without bottom navigation
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pushNamed(PushedScreen.route);
              },
              child: Text('Push route without bottom bar'),
            ),
          ],
        ),
      ),
    );
  }
}
