library home_page;

import 'package:flutter/material.dart';
import 'package:ui_challange/components/gradient_card.dart';
import 'package:ui_challange/extension/context_extension.dart';

import '../components/texts.dart';

part '../components/header.dart';
part '../components/search_box.dart';
part '../components/cities.dart';
part '../components/cards.dart';
part '../components/bottom_nav_bar.dart';
part '../components/popular_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: _ScaffoldBody(), bottomNavigationBar: _BottomNavBar());
  }
}

class _ScaffoldBody extends StatelessWidget {
  const _ScaffoldBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Our Properties',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'View all',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              const _CardList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    'View all',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              const _PopularCards()
            ],
          ),
        ),
      ),
    );
  }
}
