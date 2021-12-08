import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiStateLessWidget extends StatelessWidget {
  const UiStateLessWidget({Key? key}) : super(key: key);
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
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: null,
          ),
          title: const Center(
              child: Text(
            "Home",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          actions: const [
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
              const Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const Text(
                "Pham Tien Dat",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              const Text(
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
                  children: const [
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
                      side: const BorderSide(color: Colors.black)),
                  onPressed: () {
                    print("Click me");
                  },
                  child: const Text("Click me",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'User Profile')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          tooltip: 'Add',
          onPressed: () {
            print("Onpressed ne");
          },
        ),
      ),
    );
  }
}
