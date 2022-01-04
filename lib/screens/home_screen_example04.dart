//Button in Flutter
import 'package:flutter/material.dart';

class HomeScreenExample04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            child: TextButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)),
                elevation: MaterialStateProperty.all<double>(50),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20),
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2, 10),
                    blurRadius: 10,
                  )
                ]),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Add to cart",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
