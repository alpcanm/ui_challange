import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_challange/pages/home_page/home_page.dart';

import '../components/texts.dart';
import '../extension/context_extension.dart';

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
      body: PageView(
        controller: _pageViewController,
        children: const <Widget>[
          _PageViewScreen(1),
          _PageViewScreen(2),
          _PageViewScreen(3),
        ],
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
    if (_pageViewController.page != 2) {
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
    if (_pageViewController.page == 2.0) {
      _buttonText = 'Get Started';
    } else {
      _buttonText = 'Next';
    }
    setState(() {});
  }
}

class _PageViewScreen extends StatelessWidget {
  final int index;
  const _PageViewScreen(
    this.index, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _assetName = 'assets/svg/on_board${index.toString()}.svg';
    final _svg = SvgPicture.asset(
      _assetName,
      semanticsLabel: 'Acme Logo',
      width: context.width * 0.8,
    );
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _svg,
            const Divider(color: Colors.transparent, height: 40),
            Text(
              Texts.onBoard1Title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
            const Divider(color: Colors.transparent),
            Text(
              Texts.onBoard1Text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
