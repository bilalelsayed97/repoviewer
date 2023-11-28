import 'package:flutter/material.dart';

extension MediaQueryHelper on BuildContext {
  double get hh => MediaQuery.of(this).size.height;
  double get ww => MediaQuery.of(this).size.width;
  double get statusBarHeight => MediaQuery.of(this).viewInsets.top;
  double get bottomBarHeight => MediaQuery.of(this).viewInsets.bottom;
  dynamic get size => MediaQuery.of(this);

  bool get isAndroid => Theme.of(this).platform == TargetPlatform.android;
  bool get isIOS => Theme.of(this).platform == TargetPlatform.iOS;
}

extension NavigatorHelper on BuildContext {
  void pushAnimated(Widget widget) {
    // Navigator.of(this).push(MaterialPageRoute(builder: (context) => widget));
    Navigator.of(this).push(
      PageRouteBuilder(
        pageBuilder: (ctx0, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const double begin = 0.0;
          const double end = 1.0;
          const curve = Curves.easeInOut;
          var tween = Tween<double>(begin: begin, end: end)
              .chain(CurveTween(curve: curve));
          return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  void pushReplacementAnimated(Widget widget) {
    Navigator.of(this).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(
          seconds: 1,
        ),
        pageBuilder: (ctx1, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const double begin = 0.0;
          const double end = 1.0;
          const curve = Curves.easeInOut;
          var tween = Tween<double>(begin: begin, end: end)
              .chain(CurveTween(curve: curve));
          return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  void popAnimated(Widget widget) {
    Navigator.of(this).pop(
      PageRouteBuilder(
        pageBuilder: (ctx2, animation, secondaryAnimation) => widget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const double begin = 0.0;
          const double end = 1.0;
          const curve = Curves.easeInOut;
          var tween = Tween<double>(begin: begin, end: end)
              .chain(CurveTween(curve: curve));
          return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  void pushReplacement(Widget widget) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (ctx3) => widget));
  }

  void push(Widget widget) {
    Navigator.of(this).push(MaterialPageRoute(builder: (ctx4) => widget));
  }

  void pop(Widget widget) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (ctx5) => widget));
  }
}

extension ThemeHelper on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  Color get primaryColor => Theme.of(this).primaryColor;
}
