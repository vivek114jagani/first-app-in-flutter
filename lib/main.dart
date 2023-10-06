import 'package:flutter/material.dart';
import 'router/name.dart';
import 'router/on_generate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: firstpage,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}
