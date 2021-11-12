import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_flutter/common/fade_router.dart';
import 'package:music_flutter/pages/home/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int _count = 3;
  Timer? _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startCount();
  }

  void startCount() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _count -= 1;
      });
      if (_count == 0) {
        _timer?.cancel();
        _timer = null;
        Navigator.pushReplacement(context, FadeRouter(builder: (context) {
          return const MusicHomePage();
        }));
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: OutlinedButton(
            child: Text('$_count s'),
            style:  OutlinedButton.styleFrom(
              shape: StadiumBorder(),
              side: BorderSide(
                  width: 1,
                  color: Colors.orange
              ),
            ),
            onPressed: () {

            },
          ) ,),
      ),
    );
  }
}
