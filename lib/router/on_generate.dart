import 'package:flutter/material.dart';
import 'package:my_app/chats.dart';
import 'package:my_app/first_page.dart';
import 'package:my_app/information/info1.dart';
import 'package:my_app/information/info2.dart';
import '../information/info3.dart';
import '../information/info4.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/home_page.dart';
import 'name.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case firstpage:
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case login:
        return MaterialPageRoute(builder: (_) => const LogIn());
      case homepage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case chat:
        return MaterialPageRoute(builder: (_) => const Chat());
      case information1:
        return MaterialPageRoute(builder: (_) => const Information());
      case information2:
        return MaterialPageRoute(builder: (_) => const Info2());
      case information3:
        return MaterialPageRoute(builder: (_) => const Info3());
      case information4:
        return MaterialPageRoute(builder: (_) => const Info4());
      default:
        return null;
    }
  }
}
