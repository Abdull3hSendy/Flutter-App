 import 'package:bootcamb_1/core/features/HomeScreen/homeScreen.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
              accountName: Text('Ahmad'),
              accountEmail: Text("Ahmaed@gmail")),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (_)=>const Homepage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text("profile"),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_)=>const Homepage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text("setting"),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_)=>const Homepage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: Text("help"),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_)=>const Homepage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: Text("logout"),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_)=>const Homepage()));
            },
          ),
        ],
      ),
    );
  }
}
//Home - profile- setting -help- logout