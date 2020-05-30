import 'package:flutter/material.dart';

/// [Screen] holds all information required to build screen.
class Screen {
  /// String title used inside bottom navigation bar items
  final String title;

  /// Screen content
  final Widget child;

  /// Route generator for this screen's inner [Navigator]
  final RouteFactory onGenerateRoute;

  /// Initial route needs to be handled in [onGenerateRoute] implementation
  final String initialRoute;

  /// Navigator state for this screen
  final GlobalKey<NavigatorState> navigatorState;

  /// (Optional) Scroll controller for manipulating scroll views from
  /// [NavigationProvider].
  final ScrollController scrollController;

  Screen({
    @required this.title,
    @required this.child,
    @required this.onGenerateRoute,
    @required this.initialRoute,
    @required this.navigatorState,
    this.scrollController,
  });
}
