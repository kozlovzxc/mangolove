import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';
import 'package:mangolove/pages/counter/counter.widget.dart';
import 'package:mangolove/pages/history/history.widget.dart';

class Router {
  static final router = fluro.Router();

  static final _countHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return CounterWidget();
  });

  static final _historyHandler = fluro.Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HistoryWidget();
  });

  static navigateTo(BuildContext context, String path) {
    router.navigateTo(context, path, transition: fluro.TransitionType.fadeIn);
  }

  static forRoot() {
    router.define('counter', handler: _countHandler);
    router.define('history', handler: _historyHandler);
  }
}
