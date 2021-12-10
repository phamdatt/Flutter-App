import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app_ui.dart';

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
              Image.asset(AppUi.imagesSpalash),
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
