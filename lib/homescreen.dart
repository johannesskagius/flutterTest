import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swim/feed.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex=0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recipe'),
        ),
        body: PageView(
          controller: pageController,
          children: const [
            feed(),
            //NextSessions(),
            //Shop(),
            //Profile(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home' ),
          BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed' ),
          BottomNavigationBarItem(icon: Icon(Icons.storage), label: 'Storage' ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile' ),
        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          onTap: onTapped,
        ),
    );
  }
  void onTapped(int selected){
    setState((){
      _selectedIndex = selected;
    });
    pageController.animateToPage(selected, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}


