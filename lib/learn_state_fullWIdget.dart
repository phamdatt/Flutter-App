import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyTestFull();
  }
}

class _MyTestFull extends State<TestFull> {
  int counter = 0;
  incree() {
    this.setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
        ),
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Searchs',
            onPressed: null,
          )
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "$counter",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            textDirection: TextDirection.ltr,
          ),
          Text("HomePage")
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add',
        onPressed: incree,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Welcome to Javatpoint',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('1'),
            ),
            ListTile(
              title: Text("All Mail Inboxes"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Primary"),
            ),
            ListTile(
              title: Text("Social"),
            ),
            ListTile(
              title: Text("Promotions"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("User Profile"),
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int itemIndex) {
          setState(() {
            // _currentIndex = itemIndex;
          });
        },
      ),
    );
  }
}
