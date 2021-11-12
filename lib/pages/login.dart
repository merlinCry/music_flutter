import 'package:flutter/material.dart';
import 'package:music_flutter/common/custom_theme.dart';
import 'package:music_flutter/common/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('登录',style: CustomTheme.dark().textTheme.headline6,),
      //   backgroundColor: CustomTheme.dark().appBarTheme.backgroundColor,
      // ),
      body: Container(color: mainColor),
    );
  }
}
