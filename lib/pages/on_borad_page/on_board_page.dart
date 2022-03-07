library on_board_page;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challange/models/on_board_screen.dart';
import 'package:ui_challange/pages/home_page/home_page.dart';

import '../../components/texts.dart';
import '../../extension/context_extension.dart';

part 'components/screen.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  String _buttonText = 'Next';
  final PageController _pageViewController = PageController();
  @override
  void initState() {
    _pageViewController.addListener(() => _buttonTextControl());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageViewController,
        itemCount: boardList.length,
        itemBuilder: (context, index) {
          return _PageViewScreen(boardModel: boardList[index]);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Row(
          children: [
            Text(_buttonText),
            const Icon(Icons.arrow_forward_sharp, size: 24)
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        onPressed: onPressed,
      ),
    );
  }

  void onPressed() {
    if (_pageViewController.page != boardList.length - 1) {
      _pageViewController
          .animateToPage((_pageViewController.page!.toInt() + 1),
              duration: const Duration(seconds: 1), curve: Curves.easeOutSine)
          .then((value) => _buttonTextControl());
    } else {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );
    }
  }

  void _buttonTextControl() {
    if (_pageViewController.page == boardList.length - 1) {
      _buttonText = 'Get Started';
    } else {
      _buttonText = 'Next';
    }
    setState(() {});
  }
}
