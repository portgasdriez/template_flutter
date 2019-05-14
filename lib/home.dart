import 'package:flutter/material.dart';

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

          });
        },

        items: [
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.account_circle)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.message)
          ),
          new BottomNavigationBarItem(
              title: new Text(''),
              icon: new Icon(Icons.settings)
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