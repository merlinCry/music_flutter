import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  const BadgeIcon({Key? key, required this.icon, this.notif = false}) : super(key: key);

  final String icon;

  final bool notif;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageIcon(AssetImage(icon)),
        if(notif) const Positioned(
          right: 0,
          top: 0,
          child: Icon(
              Icons.brightness_1,
              size: 12,
              color: Colors.redAccent
          ),
        )
      ],
    );
  }
}

