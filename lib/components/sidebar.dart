import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_demo_one/screens/Login/login_screen.dart';
import 'package:flutter_demo_one/screens/main/main.dart';

import '../screens/main/schedules.dart';
import 'users/user.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Pardington T Mureka'),
            accountEmail: Text('Chengutawanda@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  // child: Image.network(
                  //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fzw.linkedin.com%2Fin%2Fpardington-mureka-69a0a01b9&psig=AOvVaw3Tf0rfjHD7fnuTT306nbrt&ust=1672297360984000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMDg7aHfm_wCFQAAAAAdAAAAABAE',
                  //   width: 90,
                  //   height: 90,
                  // ),
                  ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.wallet),
            title: const Text("Dashboard"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MainScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.timer),
            title: const Text("Swimmers management"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Users()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.schedule),
            title: const Text("Schedules"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Schedules()));
            },
          ),
          ListTile(
            leading: Icon(Icons.money),
            title: const Text("Utility Bills"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text("Signout"),
            onTap: () {
              //FirebaseAuth.instance.signOut();
              // Navigator.of(context)
              //   .pushNamedAndRemoveUntil('/signout/', (route) => false);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
