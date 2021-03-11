import 'package:flutter/material.dart';

/// [UserProvider] allows sharing user data between tabs. [UserProvider] needs
/// to be above the root [Navigator] widget, otherwise you will not be access
/// this provider using `context.read<UserProvider>()` in you app.
class UserProvider extends ChangeNotifier {
  User user;

  bool get isLogged => user != null;

  void login() {
    user = User(name: 'John Doe');
    notifyListeners();
  }

  void logout() {
    user = null;
    notifyListeners();
  }
}

class User {
  User({@required this.name}) : assert(name != null);

  final String name;
}
