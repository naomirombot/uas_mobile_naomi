import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Weekly Planners'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'menu');
              },
              child: Text('MENU'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'activities');
              },
              child: Text('All Lists Activities'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.photo_camera,
              text: 'Lists with Pics',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'Deleted Lists',
              onTap: () => print('Tap Deleted menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Open Frequently",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Important',
              onTap: () => print('Tap Important menu')),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Open Recent Lists',
              onTap: () => print('Tap Recent menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
        image: AssetImage('weekly_planner/assets/logo.jpg'),
      ),
    ),
    accountName: Text('Naomi Rombot'),
    accountEmail: Text('naomiirmbt@gmail.com'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
