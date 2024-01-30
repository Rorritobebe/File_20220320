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
      appBar: AppBar(title: Text('Reciente')),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Busqueda...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildListTile(context, Icons.cloud, 'iCloud Drive', 'Drive'),
                _buildListTile(context, Icons.phone_iphone, 'On My iPhone', 'My phone'),
                _buildListTile(context, Icons.drive_eta, 'Drive', 'Drive'),
                _buildListTile(context, Icons.cloud, 'pCloud', 'pCloud'),
                _buildListTile(context, Icons.delete, 'Recently Deleted', 'Deleted'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.recent_actors), label: 'Reciente'),
          BottomNavigationBarItem(icon: Icon(Icons.share), label:'Compartir'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label:'Explorador'),
        ],
        onTap:(index){
          if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>BrowseDetailsPage()));
          } else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>SharedPage()));
          }
        },
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData icon, String title, String additionalInfo) {
    return InkWell(
      onTap: () {
        _navigateToAdditionalInfo(context, additionalInfo);
      },
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }

  void _navigateToAdditionalInfo(BuildContext context, String additionalInfo) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AdditionalInfoPage(additionalInfo)),
    );
  }
}

class AdditionalInfoPage extends StatelessWidget {
  final String additionalInfo;

  AdditionalInfoPage(this.additionalInfo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Weapon276")),
      body: Center(
        child: Text(additionalInfo),
      ),
    );
  }
}

class BrowseDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Explorador")),
      body: Center(
        
        child: Text("Weapon276"),
      ),
    );
  }
}

class SharedPage extends StatelessWidget {
   @override
   Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(title : Text("Compartir")),
         backgroundColor: Colors.grey[200], 
       );
   }
}
