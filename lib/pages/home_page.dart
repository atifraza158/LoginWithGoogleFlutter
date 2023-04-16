import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_login/pages/login_page.dart';
import 'package:google_login/services/firebase_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("${FirebaseAuth.instance.currentUser!.photoURL}"),
          Text("${FirebaseAuth.instance.currentUser!.displayName}"),
          Text("${FirebaseAuth.instance.currentUser!.email}"),
          ElevatedButton(
            onPressed: () async {
              await FirebaseServices().signOut();
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ));
            },
            child: Text("LogOut"),
          ),
        ],
      )),
    );
  }
}
