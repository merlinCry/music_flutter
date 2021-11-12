import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';

class CloudVillage extends StatefulWidget {
  const CloudVillage({Key? key}) : super(key: key);

  @override
  _CloudVillageState createState() => _CloudVillageState();
}

class _CloudVillageState extends State<CloudVillage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('云村',style: CustomTheme.dark().textTheme.headline6,),
        backgroundColor: CustomTheme.dark().appBarTheme.backgroundColor,
      ),
      body: Container(color: Colors.orange),
    );
  }
}


