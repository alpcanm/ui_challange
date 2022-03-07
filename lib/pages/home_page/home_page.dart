library home_page;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ui_challange/extension/context_extension.dart';
import 'package:ui_challange/models/product.dart';
import 'package:ui_challange/pages/detail_page/detail_page.dart';

import '../../components/gradient_card.dart';
import '../../components/texts.dart';
import '../../models/circle_cities.dart';
import '../../models/user_model.dart';

part 'components/bottom_nav_bar.dart';
part 'components/cards.dart';
part 'components/cities.dart';
part 'components/header.dart';
part 'components/popular_cards.dart';
part 'components/search_box.dart';

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _Header(),
            _PaddingContainer(
              child: Text(
                'Find Your Stay',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const _SearchBox(),
            const Divider(
              color: Colors.transparent,
            ),
            const _Cities(),
            _PaddingContainer(
              child: Row(
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
            ),
            const _CardList(),
            _PaddingContainer(
              child: Row(
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
            ),
            const _PopularCards()
          ],
        ),
      ),
    );
  }
}

class _PaddingContainer extends StatelessWidget {
  const _PaddingContainer({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8), child: child);
  }
}
