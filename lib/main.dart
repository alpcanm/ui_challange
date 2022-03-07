import 'package:flutter/material.dart';
import 'pages/on_borad_page/on_board_page.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoardPage(),
      theme: CustomTheme.light(),
    );
  }
}
