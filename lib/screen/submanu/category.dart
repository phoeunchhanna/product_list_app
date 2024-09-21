import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: <Widget>[
          // Card 1
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Living Room',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.group_add_outlined,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 2
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Desk Lamp',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.lightbulb_outline,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 3
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Garage Door',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.garage_outlined,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 4
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Kids Room',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.king_bed_outlined,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 5
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'DHT 12',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.lightbulb_outline,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 6
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Backyard Lights',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.lightbulb_outline,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),

          // Card 7
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 5, 10),
            child: const Card(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 70,
                      color: Colors.green,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'SETTING',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Card 8
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: const Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'CONNECT',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Icon(
                      Icons.group_add_outlined,
                      size: 100,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
