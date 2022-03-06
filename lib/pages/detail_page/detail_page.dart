library detail_page;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challange/extension/context_extension.dart';

import 'package:ui_challange/models/product.dart';

import '../../components/card_icon_button.dart';

part 'components/card.dart';
part 'components/app_bar.dart';
part 'components/body.dart';
part 'components/other_photo.dart';
part 'components/footer.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _DetailAppBar(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _Card(
            product: product,
          ),
          _OtherPhotos(
            product: product,
          ),
          _Body(
            product: product,
          ),
          _Footer(product: product)
        ],
      )),
    );
  }
}
