// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:gamersparlor/values/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool authCheck = false;
  @override
  void initState() {
    super.initState();
    initApplication();
  }

  initApplication() async {
   
    await Future.delayed(const Duration(seconds: 3), () async{

           Navigator.pushNamed(context, 'home');

    });
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.4,),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 100,
                  ),
                  
                  SizedBox(height: 10,),
                  Text(
                    'Gamers Parlor',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
     
            ],
          ),
        ),
      ),
    );
  }
}
