import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';
class DiscovreryPage extends StatefulWidget {
  const DiscovreryPage({Key? key}) : super(key: key);

  @override
  _DiscovreryPageState createState() => _DiscovreryPageState();
}

class _DiscovreryPageState extends State<DiscovreryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现',style: CustomTheme.dark().textTheme.headline6,),
        backgroundColor: CustomTheme.dark().appBarTheme.backgroundColor,
      ),
      body: Container(color: Colors.white),
    );
  }
}
