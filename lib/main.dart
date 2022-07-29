import 'dart:developer';
import 'package:flutter/material.dart';

void main() => runApp(HomeworkOsnovy());

class HomeworkOsnovy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(212, 41, 58, 153),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text(
            'Counter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: CounterWidget(),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Tap - to decrement",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 140, left: 140, top: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(66, 255, 255, 255)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _count--;
                    });
                  },
                  iconSize: 30,
                  icon: Icon(Icons.remove),
                  color: Colors.white,
                ),
                Text(
                  '$_count',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _count++;
                      });
                    },
                    iconSize: 30,
                    icon: Icon(Icons.add, color: Colors.white)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Tap + to increment",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
