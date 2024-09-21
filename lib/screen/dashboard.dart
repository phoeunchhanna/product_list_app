import 'package:dashboard/menu/footer.dart';
import 'package:dashboard/menu/navigation.dart';
import 'package:dashboard/screen/app_color.dart';
import 'package:dashboard/screen/submanu/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
  
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey, // Set the key for the Scaffold
      appBar: AppBar(
        title: const Text(
          'CC Shop',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // This centers the title
       
        actions: [
          
         IconButton(
            icon: const Icon(Icons.group),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer(); // Open end drawer
            },
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: ListTile(
                  title: Text('Settings'),
                  trailing: Icon(Icons.settings),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  title: Text('Populer '),
                  trailing: Icon(Icons.share),
                ),
              ),
              const PopupMenuItem(
                child: ListTile(
                  title: Text('Favarit'),
                  trailing: Icon(Icons.favorite),
                ),
              ),
            ],
          )
        ],

        backgroundColor: Color.fromARGB(255, 4, 175, 75),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 4, 175, 75),
        ),
      ),
      drawer: const Navigation(),
      
      body:const Home(),

      bottomNavigationBar: const Footer(),
      
    );
  }
}


