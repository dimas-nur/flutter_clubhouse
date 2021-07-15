import 'package:flutter/material.dart';
import 'package:flutter_clubhouse/config/app_theme.dart';
import 'package:flutter_clubhouse/presetation/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.of(context),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
