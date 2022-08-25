import 'package:flutter/material.dart';
import 'package:navigation_app/about_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff764abc)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIALVtO_uns-Pmt5MWN87YTiZ5ndelljpYaA&usqp=CAU'),
              ),
              accountName: Text(
                'Areeba Shakeel Ahmed',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text('iamareebachhipa@gmail.com',style: TextStyle(fontSize: 15),)),
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('My Folder'),
            onTap: () {
              Navigator.pushNamed(context, AboutPage.id);
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Page2'),
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pushNamed(context, HomePage.id);
            },
          )
        ],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AboutPage.id);
              },
              child: const Text('Home Page'),
            ),
          )
        ],
      ),
    );
  }
}
