import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({Key? key}) : super(key: key);

  @override
  _FocusPageState createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关注',style: CustomTheme.dark().textTheme.headline6,),
        backgroundColor: CustomTheme.dark().appBarTheme.backgroundColor,
      ),
      body: Container(color: Colors.brown),
    );
  }
}
