import 'package:flutter/material.dart';
import 'package:users/data/model/user_model.dart';
import 'package:users/view/home_page.dart';
import 'package:users/view/info_page.dart';

class RouteGenerator {

  //For SingleTon

  static final RouteGenerator _generator = RouteGenerator._init();

  static RouteGenerator get router => _generator;

  RouteGenerator._init();

  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _navigate(const HomePage());
      case 'info':
        return _navigate(InfoPage(user: settings.arguments as UserModel));
    }
    return null;
  }

  MaterialPageRoute _navigate(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
