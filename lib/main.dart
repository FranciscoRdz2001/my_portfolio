import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_portfolio/app/theme/app_theme.dart';
import 'package:my_portfolio/modules/home/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: AppCustomTheme.darkMode,
      home: const HomePage(),
    );
  }
}
