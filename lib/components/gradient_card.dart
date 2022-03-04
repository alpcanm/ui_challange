import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  const GradientCard({
    Key? key,
    required this.iconData,
    required this.iconSize,
  }) : super(key: key);
  final IconData iconData;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xFFF78E48),
              Color(0xFFF05A22),
            ],
          ),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              color: Colors.white,
              size: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
