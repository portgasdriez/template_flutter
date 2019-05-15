import 'package:flutter/material.dart';

import 'fragment/event_fragment.dart';
import 'fragment/news_fragment.dart';
import 'fragment/profile_fragment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0XFF29D091),
        currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState((){
            _bottomNavIndex = index;
            switch (index) {
              case 0:
                return new ProfileFragment();
              case 1:
                return new NewsFragment();
              case 2:
                return new EventFragment();

              default:
                return new Text("Error");
            }

          });
        },

        items: [
          new BottomNavigationBarItem(
              title: new Text('Profile'),
              icon: new Icon(Icons.account_circle)

          ),
          new BottomNavigationBarItem(
              title: new Text('News'),
              icon: new Icon(Icons.airplay)
          ),
          new BottomNavigationBarItem(
              title: new Text('Event'),
              icon: new Icon(Icons.event)
          )

        ],
      ),
      appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Home',
            style: TextStyle(color: Color(0xFF18D191)),),
          iconTheme: new IconThemeData(color: Color(0xFF18D191))),
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container();
  }
}