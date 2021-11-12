import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';

class DrawerUserCenter extends StatefulWidget {
  const DrawerUserCenter({Key? key}) : super(key: key);

  @override
  _DrawerUserCenterState createState() => _DrawerUserCenterState();
}

class _DrawerUserCenterState extends State<DrawerUserCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: CustomTheme.dark().appBarTheme.backgroundColor,
    );
  }
}
