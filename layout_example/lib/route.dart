import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:layout_example/screen/main_screen.dart';

class RouteGenerator {
  static Route onGrenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(
          builder: (context) => MainScreen(),
        );
        break;
      case '/history':
        return CupertinoPageRoute(
          builder: (context) => HistoryScreen(),
        );
        break;
      default:
    }
  }
}
