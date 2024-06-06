import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? args}) {
    return Navigator.of(this).pushNamed(routeName, arguments: args);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? args}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: args);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? args, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: args);
  }

  void pop() => Navigator.of(this).pop();
}
