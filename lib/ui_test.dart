import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      title: 'This is Ui Test',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [ListTile(title: Text("Hello"))],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: null,
          ),
          title: Center(
              child: Text(
            "Home",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
            )
          ],
        ),
        body: Container(
          color: Colors.green[100],
          child: Column(
            children: [
              Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Phạm Minh Mẫn",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Phạm Minh Mẫn",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Image.network(
                  'https://scontent.fsgn2-4.fna.fbcdn.net/v/t45.1600-4/cp0/q75/spS444/p960x960/131234242_23846708573050298_7747116167779805889_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=67cdda&_nc_ohc=w9maiOVAQIEAX8JMEMZ&_nc_ht=scontent.fsgn2-4.fna&oh=0bd389649230116a0a5c5945fa634617&oe=61B3BCEB'),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      primary: Colors.red,
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    print("Click me");
                  },
                  child: Text("Click me",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('Search')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text('User Profile'))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          tooltip: 'Add',
          onPressed: () {
            print("Onpressed ne");
          },
        ),
      ),
    );
  }
}
