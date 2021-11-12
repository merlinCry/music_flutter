import 'package:flutter/material.dart';
import 'package:music_flutter/common/badge_icon.dart';
import 'package:music_flutter/common/utils.dart';
import 'package:music_flutter/pages/broadcast/broad_cast.dart';
import 'package:music_flutter/pages/cloud_village/cloud_village.dart';
import 'package:music_flutter/pages/discovrery/discovrery_apge.dart';
import 'package:music_flutter/pages/focus/focus_page.dart';
import 'package:music_flutter/pages/home/drawer_user_center.dart';
import 'package:music_flutter/pages/personal_stuff/personal.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({Key? key}) : super(key: key);

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    DiscovreryPage(key: GlobalKey()),
    BoradCast(key: GlobalKey()),
    PersonalStuff(key: GlobalKey()),
    FocusPage(key: GlobalKey()),
    CloudVillage(key: GlobalKey()),
  ];

  List<BottomNavigationBarItem> btmItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
        icon: BadgeIcon(icon: 'assets/images/cm4_btm_icn_discovery.png'),
        label: '发现'
    ),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/cm4_btm_icn_discovery.png')),
        label: '博客'
    ),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/cm4_btm_icn_friend.png')),
        label: '我的'
    ),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/cm4_btm_icn_friend.png')),
        label: '关注'
    ),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/cm4_btm_icn_music.png')),
        label: '云村1'
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            pages[_selectedIndex],
            Positioned(child: Builder(builder: (BuildContext ctx) {
              return IconButton(
                icon: const Icon(Icons.dehaze),
                onPressed: () {
                  Scaffold.of(ctx).openDrawer();
                },
              );
            }))
          ],
        ),
      ),
      drawer: const DrawerUserCenter(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: btmItems,
      ),
    );
  }
}
