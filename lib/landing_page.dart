import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: const Text("Welcome To",
                    style: TextStyle(fontSize: 62, color: Colors.white)),
              )),
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      "Englishs",
                      style: TextStyle(
                          fontSize: 42,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 32),
                      child: Text(
                        "Quotes",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(bottom: 72),
                child: RawMaterialButton(
                  fillColor: Colors.blue[50],
                  shape: const CircleBorder(),
                  child: const Icon(Icons.chevron_right),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => HomePage()),
                        (route) => false);
                  },
                ),
              ))
            ],
          ),
        ));
  }
}
