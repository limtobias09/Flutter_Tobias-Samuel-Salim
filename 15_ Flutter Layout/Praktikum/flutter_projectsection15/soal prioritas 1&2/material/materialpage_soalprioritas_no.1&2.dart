import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Material App'),
      ),
      drawer: Drawer(

        //Maksud 'child: ListView' adalah dalam Drawer tersebut terdapat list yang memiliki text Home dan Settings
        child: ListView(
          children: [
            ListTile(title: Text('Home')), 
            ListTile(title: Text('Settings')),
          ],
        ),
      ),

      //Maksud 'body: const Center' adalah apapun yang ada di body tersebut akan berposisi di tengah2 body dan dalam kasus ini text 'This is Material App' akan berada di tengah body
      body: const Center(
        child: Text('This is Material App'),
      ),

      bottomNavigationBar: BottomNavigationBar(

        //'items: const[]' artinya dalam bottomNavigationBar akan terdapat item yaitu Home dan Settings
        items: const[
          
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}