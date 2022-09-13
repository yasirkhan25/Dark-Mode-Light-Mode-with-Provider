import 'package:darkmode_lightmode/ui/screens/home_screen/theme_changer_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  delay() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ThemeChangerScreen()),
    );
  }

  @override
  void initState() {
    super.initState();
    delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/icons/splash_screen_icon_.png",height: 150,),
          ),
          SizedBox(height: 15,),
          Text(
            'Dark Mode & Light Mode',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
          ),
        ],
      ),
    );
  }
}
