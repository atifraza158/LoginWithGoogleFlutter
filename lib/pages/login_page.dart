import 'package:flutter/material.dart';
import 'package:google_login/pages/home_page.dart';
import 'package:google_login/services/firebase_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Login with Goole",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () async {
            await FirebaseServices().googleSign();
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            ));
          },
        ),
      ),
    );
  }
}
