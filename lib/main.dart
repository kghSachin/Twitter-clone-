import 'package:flutter/material.dart';
import 'package:twitterkoclone/features/auth/view/login_view.dart';
import 'package:twitterkoclone/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // docker compose stop
  //docker compose up -d --remove-orphans
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const LogInView(),
    );
  }
}
