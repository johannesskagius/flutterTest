import 'package:flutter/material.dart';


class feed extends StatelessWidget {
  const feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return test();
  }
}
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  final List<String> headers = <String>['1', '2', '3', '4'];
  final List<String> desc = <String>['Nivån', 'Nivån', 'Nivån', 'Nivån'];
  final List<int> colorCodes = <int>[600,500,400,300];
  final List<IconData> icons  = <IconData>[Icons.sailing, Icons.feed, Icons.home, Icons.repeat];
  int _selectedIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: headers.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 100,
            color: Colors.amber[colorCodes[index]],
            child: _listViewItem(Colors.red, icons[index], headers[index], desc[index])
          );
        },
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


Card _listViewItem(Color color, IconData icon, String title, String desc){
  return Card(
    child: ListTile(
      leading: icon,

    ),
  );
}

/*ListTile _listViewButton(Color color, IconData icon, String title, String desc){
  return ListTile(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, color: color),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ],
          ),

        ],
      )
    ],
  );
}*/

//Center(child: Text('Entry ${entries[index]}'))