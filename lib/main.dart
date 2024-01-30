import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BrowsePage(),
    );
  }
}

class BrowsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Browse')),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.cloud),
                  title: Text('iCloud Drive'),
                ),
                ListTile(
                  leading: Icon(Icons.phone_iphone),
                  title: Text('On My iPhone'),
                ),
                ListTile(
                  leading: Icon(Icons.drive_eta),
                  title: Text('Drive'),
                ),
                ListTile(
                  leading: Icon(Icons.cloud),
                  title: Text('pCloud'),
                ),
                ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Recently Deleted'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.recent_actors), label: 'Recents'),
          BottomNavigationBarItem(icon: Icon(Icons.share), label:'Shared'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label:'Browse'),
        ],
        onTap:(index){
          if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>SharedPage()));
          }
        },
      ),
    );
  }
}

class SharedPage extends StatelessWidget{
   @override
   Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(title : Text("Shared")),
         backgroundColor: Colors.grey[200], 
       );
   }
}
