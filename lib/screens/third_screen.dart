import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/providers/user_provider.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatelessWidget {
  static const route = '/third';

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>();
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: user.isLogged
            ? ElevatedButton(
                onPressed: () {
                  user.logout();
                },
                child: Text('Logout'),
              )
            : ElevatedButton(
                onPressed: () {
                  user.login();
                },
                child: Text('Login'),
              ),
      ),
    );
  }
}
