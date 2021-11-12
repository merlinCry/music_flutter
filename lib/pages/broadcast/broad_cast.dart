import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';

class BoradCast extends StatefulWidget {
  const BoradCast({Key? key}) : super(key: key);

  @override
  _BoradCastState createState() => _BoradCastState();
}

class _BoradCastState extends State<BoradCast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('博客',style: CustomTheme.dark().textTheme.headline6,),
        backgroundColor: CustomTheme.dark().appBarTheme.backgroundColor,
      ),
      body: Container(color: Colors.red),
    );
  }
}
