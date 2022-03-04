library home_page;

import 'package:flutter/material.dart';

import '../components/texts.dart';

part '../components/header.dart';
part '../components/search_box.dart';
part '../components/cities.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header(),
              Text(
                'Find Your Stay',
                style: Theme.of(context).textTheme.headline6,
              ),
              const _SearchBox(),
              const Divider(
                color: Colors.transparent,
              ),
              const _Cities(),
              Text(
                'Our Properties',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
