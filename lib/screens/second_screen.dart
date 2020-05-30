import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/providers/navigation_provider.dart';

class SecondScreen extends StatelessWidget {
  static const route = '/second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: ListView.builder(
        controller: NavigationProvider.of(context)
            .screens[SECOND_SCREEN]
            .scrollController,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Tile $index'),
          );
        },
      ),
    );
  }
}
