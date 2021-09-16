import 'package:flutter/material.dart';

class ArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.all(75.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Articles',
                style: TextStyle(fontSize: 36, color: Colors.amberAccent),
              ),
              SizedBox(
                height: 75,
              ),
            ],
          ),
        ))));
  }
}
