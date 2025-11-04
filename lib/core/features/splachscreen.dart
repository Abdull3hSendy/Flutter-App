import 'dart:async';

 import 'package:bootcamb_1/core/features/auth/loginpage.dart';
import 'package:flutter/material.dart';

class Splachscreen extends StatefulWidget {
  const Splachscreen({super.key});

  @override
  State<Splachscreen> createState() => _SplachscreenState();
}

class _SplachscreenState extends State<Splachscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder:(_) => LoginPage()
          )
      );
       });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
