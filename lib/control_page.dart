import 'package:flutter/material.dart';
import 'package:my_app/values/shared_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllPage extends StatefulWidget {
  const ControllPage({Key? key}) : super(key: key);

  @override
  _ControllPageState createState() => _ControllPageState();
}

class _ControllPageState extends State<ControllPage> {
  double sliderValue = 5;
  late SharedPreferences perfs;
  void initState() {
    super.initState();
    initDefaultValue();
  }

  initDefaultValue() async {
    perfs = await SharedPreferences.getInstance();
    int value = perfs.getInt(SharedKeys.counter) ?? 5;
    setState(() {
      sliderValue=value.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Your control",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.blue[50],
        leading: InkWell(
          onTap: () async {
            SharedPreferences perfs = await SharedPreferences.getInstance();
            await perfs.setInt(SharedKeys.counter, sliderValue.toInt());
            Navigator.pop(context);
          },
          child: const Icon(Icons.chevron_left, color: Colors.black),
        ),
        actions: [],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "How much a number word at once !",
              style: TextStyle(fontSize: 18, color: Colors.blue[200]),
            ),
            Text(
              "${sliderValue.toInt()}",
              style: TextStyle(
                  fontSize: 150,
                  color: Colors.blue[200],
                  fontWeight: FontWeight.bold),
            ),
            Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 5,
              max: 100,
              divisions: 95,
            ),
          ],
        ),
      ),
    );
  }
}
