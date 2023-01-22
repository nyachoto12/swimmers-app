import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../screens/main/header.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  get error => null;

  get context => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/swim.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              title: const Text("Pardington Mureka"),
              onTap: () => null,
              trailing: TextButton(
                
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.white,
                      elevation: 10,
                      content: Container(
                        padding: const EdgeInsets.all(2),
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 17, 116, 192),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const Center(
                          child: Text('You are being taken to user\'s profile'),
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  "Details",
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/swim.png',
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              title: const Text("Tariro Chakandinakira"),
              onTap: () => null,
              trailing: TextButton(
                onPressed: () => alert1(),
                child: const Text("Details"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  alert1() {}
}
