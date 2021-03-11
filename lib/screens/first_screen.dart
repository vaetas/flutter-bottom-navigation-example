import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/providers/user_provider.dart';
import 'package:flutter_bottom_navigation/screens/pushed_screen.dart';

import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  static const route = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: DefaultTextStyle(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              child: Builder(
                builder: (context) {
                  final user = context.watch<UserProvider>().user;

                  if (user != null) {
                    return Text('Logged user: ${user.name}');
                  } else {
                    return Text('Logged out');
                  }
                },
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Push with bottom navigation visible
                Navigator.of(
                  context,
                  rootNavigator: false,
                ).pushNamed(PushedScreen.route);
              },
              child: Text('Push route with bottom bar'),
            ),
            ElevatedButton(
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
