import 'package:flutter/material.dart';

class RoundedRectangleCardIcon extends StatelessWidget {
  const RoundedRectangleCardIcon({
    Key? key,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);
  final VoidCallback onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(iconData),
        iconSize: 25,
        splashRadius: 25,
      ),
    );
  }
}
