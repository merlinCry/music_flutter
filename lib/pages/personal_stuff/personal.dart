import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';

class PersonalStuff extends StatefulWidget {
  const PersonalStuff({Key? key}) : super(key: key);

  @override
  _PersonalStuffState createState() => _PersonalStuffState();
}

class _PersonalStuffState extends State<PersonalStuff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的',style: CustomTheme.dark().textTheme.headline6,),
        backgroundColor: CustomTheme.dark().appBarTheme.backgroundColor,
      ),
      body: Container(color: Colors.pink),
    );
  }
}
