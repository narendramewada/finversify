import 'package:finversify/Tips.dart';
import 'package:finversify/finsight.dart';
import 'package:finversify/home.dart';
import 'package:finversify/login.dart';
import 'package:finversify/services.dart';
import 'package:finversify/settings.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class bottom_nv extends StatefulWidget {
  const bottom_nv({Key? key}) : super(key: key);

  @override
  State<bottom_nv> createState() => _bottom_nvState();
}

class _bottom_nvState extends State<bottom_nv> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[

    home(),
    services(),
    tips(),
    finsight(),
    setting(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;


    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w600,
          height: 1.2125,color: Color(0xff000000)),


          showUnselectedLabels: true,

          backgroundColor: Colors.white,


          items: [

            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/home.png')),
                label: 'Home',
                activeIcon: ImageIcon(AssetImage('assets/homefill.png'))),

            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/finsight.png')),
                label: 'Services',
                activeIcon: ImageIcon(AssetImage('assets/finsightfill.png'))),


            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/tips.png',)),
                label: 'Tips',
                activeIcon: ImageIcon(AssetImage('assets/tipsfill.png'))),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/services.png')),
                label: 'Finsights',
                activeIcon: ImageIcon(AssetImage('assets/servicesfill.png'))),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/setting.png')),
                label: 'Settings',
                activeIcon: ImageIcon(AssetImage('assets/settingfill.png'))),



          ],

          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: _selectedIndex,


          onTap: _onItemTapped,
         // fixedColor: Colors.black,
        )
    );

  }
}
